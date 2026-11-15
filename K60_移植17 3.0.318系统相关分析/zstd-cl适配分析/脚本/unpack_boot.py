import struct, sys, os, hashlib, gzip, bz2, lzma
src, outdir = sys.argv[1], sys.argv[2]
data = open(src,'rb').read()
magic = data[:8]
print("magic:", magic)
if magic != b'ANDROID!':
    print("NOT ANDROID BOOT IMAGE"); sys.exit(1)
(kernel_size, ramdisk_size, os_version, header_size) = struct.unpack_from('<IIII', data, 8)
header_version = struct.unpack_from('<I', data, 40)[0]
print("kernel_size=%d ramdisk_size=%d header_version=%d header_size=%d os_version=0x%08x" % (kernel_size, ramdisk_size, header_version, header_size, os_version))
cmdline = data[44:44+1536].split(b'\x00')[0].decode(errors='replace')
print("cmdline:", cmdline)
sig_size = 0
if header_version >= 4:
    sig_size = struct.unpack_from('<I', data, header_size-4)[0]
    print("signature_size:", sig_size)
off = 4096
k = data[off:off+kernel_size]
off += (kernel_size + 4095)//4096*4096
r = data[off:off+ramdisk_size]
print("kernel md5:", hashlib.md5(k).hexdigest(), "ramdisk md5:", hashlib.md5(r).hexdigest())
os.makedirs(outdir, exist_ok=True)
open(os.path.join(outdir,'kernel'),'wb').write(k)
open(os.path.join(outdir,'ramdisk'),'wb').write(r)
def identify(b, name):
    if b[:4]==b'\x1f\x8b\x08\x00' or b[:2]==b'\x1f\x8b': return 'gzip'
    if b[:4]==b'\x02\x21\x4c\x18': return 'lz4-legacy'
    if b[:4]==b'\x04\x22\x4d\x18': return 'lz4'
    if b[:6]==b'\xfd7zXZ\x00': return 'xz'
    if b[:3]==b'BZh': return 'bzip2'
    if b[:6]==b'\x89LZO\x00\r\n\x1a\n': return 'lzop'
    if b[:4]==b'\x28\xb5\x2f\xfd': return 'zstd'
    if b[:4]==b'\x03\x00\x21\x4c' or b[:4]==b'\x00\x00\x00\x00': return 'unknown/raw'
    return 'raw?'
print("kernel comp:", identify(k,'kernel'), "first16:", k[:16].hex())
print("ramdisk comp:", identify(r,'ramdisk'), "first16:", r[:16].hex())

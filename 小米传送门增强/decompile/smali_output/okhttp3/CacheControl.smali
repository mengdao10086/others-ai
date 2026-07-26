.class public final Lokhttp3/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/CacheControl$Builder;
    }
.end annotation


# static fields
.field public static final FORCE_CACHE:Lokhttp3/CacheControl;

.field public static final FORCE_NETWORK:Lokhttp3/CacheControl;


# instance fields
.field headerValue:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final immutable:Z

.field private final isPrivate:Z

.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final noTransform:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 33
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 40
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 41
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->onlyIfCached()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    const v1, 0x7fffffff

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    invoke-virtual {v0, v1, v2}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    return-void
.end method

.method constructor <init>(Lokhttp3/CacheControl$Builder;)V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noCache:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z

    .line 81
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noStore:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z

    .line 82
    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lokhttp3/CacheControl;->isPrivate:Z

    .line 85
    iput-boolean v0, p0, Lokhttp3/CacheControl;->isPublic:Z

    .line 86
    iput-boolean v0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    .line 87
    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    .line 88
    iget v0, p1, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    .line 89
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 90
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noTransform:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z

    .line 91
    iget-boolean p1, p1, Lokhttp3/CacheControl$Builder;->immutable:Z

    iput-boolean p1, p0, Lokhttp3/CacheControl;->immutable:Z

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .registers 14
    .param p13    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean p1, p0, Lokhttp3/CacheControl;->noCache:Z

    .line 65
    iput-boolean p2, p0, Lokhttp3/CacheControl;->noStore:Z

    .line 66
    iput p3, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 67
    iput p4, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    .line 68
    iput-boolean p5, p0, Lokhttp3/CacheControl;->isPrivate:Z

    .line 69
    iput-boolean p6, p0, Lokhttp3/CacheControl;->isPublic:Z

    .line 70
    iput-boolean p7, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    .line 71
    iput p8, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    .line 72
    iput p9, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    .line 73
    iput-boolean p10, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 74
    iput-boolean p11, p0, Lokhttp3/CacheControl;->noTransform:Z

    .line 75
    iput-boolean p12, p0, Lokhttp3/CacheControl;->immutable:Z

    .line 76
    iput-object p13, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    return-void
.end method

.method private headerValue()Ljava/lang/String;
    .registers 5

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noCache:Z

    if-eqz v1, :cond_e

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :cond_e
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noStore:Z

    if-eqz v1, :cond_17

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_17
    iget v1, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    const-string v2, ", "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2b

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_2b
    iget v1, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    if-eq v1, v3, :cond_3c

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_3c
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPrivate:Z

    if-eqz v1, :cond_45

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :cond_45
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPublic:Z

    if-eqz v1, :cond_4e

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_4e
    iget-boolean v1, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    if-eqz v1, :cond_57

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_57
    iget v1, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    if-eq v1, v3, :cond_68

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_68
    iget v1, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    if-eq v1, v3, :cond_79

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_79
    iget-boolean v1, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    if-eqz v1, :cond_82

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_82
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noTransform:Z

    if-eqz v1, :cond_8b

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_8b
    iget-boolean v1, p0, Lokhttp3/CacheControl;->immutable:Z

    if-eqz v1, :cond_94

    const-string v1, "immutable, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_9d

    const-string v0, ""

    return-object v0

    .line 288
    :cond_9d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .registers 23

    move-object/from16 v0, p0

    .line 184
    invoke-virtual/range {p0 .. p0}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_1a
    if-ge v6, v1, :cond_147

    .line 185
    invoke-virtual {v0, v6}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {v0, v6}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    .line 188
    const-string v3, "Cache-Control"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    if-eqz v8, :cond_30

    :goto_2e
    const/4 v7, 0x0

    goto :goto_3b

    :cond_30
    move-object v8, v5

    goto :goto_3b

    .line 195
    :cond_32
    const-string v3, "Pragma"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_140

    goto :goto_2e

    :goto_3b
    const/4 v2, 0x0

    .line 203
    :goto_3c
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_140

    .line 205
    const-string v3, "=,;"

    invoke-static {v5, v2, v3}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 206
    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_66

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v0, 0x2c

    if-eq v4, v0, :cond_66

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x3b

    if-ne v0, v4, :cond_68

    :cond_66
    const/4 v4, 0x1

    goto :goto_9b

    :cond_68
    add-int/lit8 v3, v3, 0x1

    .line 214
    invoke-static {v5, v3}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespace(Ljava/lang/String;I)I

    move-result v0

    .line 217
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_8b

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_8b

    add-int/lit8 v0, v0, 0x1

    .line 220
    const-string v3, "\""

    invoke-static {v5, v0, v3}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 221
    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    goto :goto_9e

    :cond_8b
    const/4 v4, 0x1

    .line 227
    const-string v3, ",;"

    invoke-static {v5, v0, v3}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 228
    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_9e

    :goto_9b
    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x0

    .line 232
    :goto_9e
    const-string v4, "no-cache"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_aa

    const/4 v4, -0x1

    const/4 v9, 0x1

    goto/16 :goto_13b

    .line 234
    :cond_aa
    const-string v4, "no-store"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b6

    const/4 v4, -0x1

    const/4 v10, 0x1

    goto/16 :goto_13b

    .line 236
    :cond_b6
    const-string v4, "max-age"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c6

    const/4 v4, -0x1

    .line 237
    invoke-static {v0, v4}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move v11, v0

    goto/16 :goto_13b

    .line 238
    :cond_c6
    const-string v4, "s-maxage"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d6

    const/4 v4, -0x1

    .line 239
    invoke-static {v0, v4}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move v12, v0

    goto/16 :goto_13b

    .line 240
    :cond_d6
    const-string v4, "private"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e1

    const/4 v4, -0x1

    const/4 v13, 0x1

    goto :goto_13b

    .line 242
    :cond_e1
    const-string v4, "public"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ec

    const/4 v4, -0x1

    const/4 v14, 0x1

    goto :goto_13b

    .line 244
    :cond_ec
    const-string v4, "must-revalidate"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f7

    const/4 v4, -0x1

    const/4 v15, 0x1

    goto :goto_13b

    .line 246
    :cond_f7
    const-string v4, "max-stale"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10a

    const v2, 0x7fffffff

    .line 247
    invoke-static {v0, v2}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move/from16 v16, v0

    const/4 v4, -0x1

    goto :goto_13b

    .line 248
    :cond_10a
    const-string v4, "min-fresh"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11a

    const/4 v4, -0x1

    .line 249
    invoke-static {v0, v4}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    move/from16 v17, v0

    goto :goto_13b

    :cond_11a
    const/4 v4, -0x1

    .line 250
    const-string v0, "only-if-cached"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_126

    const/16 v18, 0x1

    goto :goto_13b

    .line 252
    :cond_126
    const-string v0, "no-transform"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_131

    const/16 v19, 0x1

    goto :goto_13b

    .line 254
    :cond_131
    const-string v0, "immutable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13b

    const/16 v20, 0x1

    :cond_13b
    :goto_13b
    move-object/from16 v0, p0

    move v2, v3

    goto/16 :goto_3c

    :cond_140
    const/4 v4, -0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1a

    :cond_147
    if-nez v7, :cond_14c

    const/16 v21, 0x0

    goto :goto_14e

    :cond_14c
    move-object/from16 v21, v8

    .line 263
    :goto_14e
    new-instance v0, Lokhttp3/CacheControl;

    move-object v8, v0

    invoke-direct/range {v8 .. v21}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isPrivate()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPrivate:Z

    return v0
.end method

.method public isPublic()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPublic:Z

    return v0
.end method

.method public maxAgeSeconds()I
    .registers 2

    .line 114
    iget v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    return v0
.end method

.method public maxStaleSeconds()I
    .registers 2

    .line 138
    iget v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    return v0
.end method

.method public minFreshSeconds()I
    .registers 2

    .line 142
    iget v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    return v0
.end method

.method public mustRevalidate()Z
    .registers 2

    .line 134
    iget-boolean v0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public noCache()Z
    .registers 2

    .line 102
    iget-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z

    return v0
.end method

.method public noStore()Z
    .registers 2

    .line 107
    iget-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z

    return v0
.end method

.method public onlyIfCached()Z
    .registers 2

    .line 152
    iget-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 269
    iget-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    .line 270
    :cond_5
    invoke-direct {p0}, Lokhttp3/CacheControl;->headerValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    :goto_b
    return-object v0
.end method

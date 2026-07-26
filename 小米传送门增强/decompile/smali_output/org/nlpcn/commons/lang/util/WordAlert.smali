.class public Lorg/nlpcn/commons/lang/util/WordAlert;
.super Ljava/lang/Object;
.source "WordAlert.java"


# static fields
.field private static final CHARCOVER:[C


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/high16 v0, 0x10000

    .line 54
    new-array v0, v0, [C

    sput-object v0, Lorg/nlpcn/commons/lang/util/WordAlert;->CHARCOVER:[C

    const/4 v0, 0x0

    .line 57
    :goto_7
    sget-object v1, Lorg/nlpcn/commons/lang/util/WordAlert;->CHARCOVER:[C

    array-length v2, v1

    if-ge v0, v2, :cond_6a

    const v2, 0xff41

    const v3, 0xfee0

    if-lt v0, v2, :cond_1f

    const v2, 0xff5a

    if-gt v0, v2, :cond_1f

    sub-int v2, v0, v3

    int-to-char v2, v2

    .line 59
    aput-char v2, v1, v0

    goto :goto_67

    :cond_1f
    const v2, 0xff21

    if-lt v0, v2, :cond_32

    const v2, 0xff3a

    if-gt v0, v2, :cond_32

    const v2, 0xfec0

    sub-int v2, v0, v2

    int-to-char v2, v2

    .line 61
    aput-char v2, v1, v0

    goto :goto_67

    :cond_32
    const/16 v2, 0x41

    if-lt v0, v2, :cond_40

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_40

    add-int/lit8 v2, v0, 0x20

    int-to-char v2, v2

    .line 63
    aput-char v2, v1, v0

    goto :goto_67

    :cond_40
    const v2, 0xff10

    if-lt v0, v2, :cond_50

    const v2, 0xff19

    if-gt v0, v2, :cond_50

    sub-int v2, v0, v3

    int-to-char v2, v2

    .line 65
    aput-char v2, v1, v0

    goto :goto_67

    :cond_50
    const/16 v2, 0x30

    if-lt v0, v2, :cond_5c

    const/16 v2, 0x39

    if-gt v0, v2, :cond_5c

    int-to-char v2, v0

    .line 67
    aput-char v2, v1, v0

    goto :goto_67

    :cond_5c
    const/16 v2, 0x61

    if-lt v0, v2, :cond_67

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_67

    int-to-char v2, v0

    .line 69
    aput-char v2, v1, v0

    :cond_67
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_6a
    return-void
.end method

.method public static CharCover(C)C
    .registers 2

    .line 212
    sget-object v0, Lorg/nlpcn/commons/lang/util/WordAlert;->CHARCOVER:[C

    aget-char p0, v0, p0

    return p0
.end method

.method public static alertNumber([CII)Ljava/lang/String;
    .registers 6

    move v0, p1

    :goto_1
    add-int v1, p1, p2

    if-ge v0, v1, :cond_1b

    .line 126
    aget-char v1, p0, v0

    const v2, 0xff10

    if-lt v1, v2, :cond_18

    const v2, 0xff19

    if-gt v1, v2, :cond_18

    const v2, 0xfee0

    sub-int/2addr v1, v2

    int-to-char v1, v1

    .line 127
    aput-char v1, p0, v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_1b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static isEnglish(Ljava/lang/String;)Z
    .registers 6

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_34

    .line 177
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_14

    const/16 v4, 0x7a

    if-le v3, v4, :cond_30

    :cond_14
    const v4, 0xff41

    if-lt v3, v4, :cond_1e

    const v4, 0xff5a

    if-le v3, v4, :cond_30

    :cond_1e
    const v4, 0xff21

    if-lt v3, v4, :cond_28

    const v4, 0xff3a

    if-le v3, v4, :cond_30

    :cond_28
    const/16 v4, 0x41

    if-lt v3, v4, :cond_33

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_33

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_33
    return v1

    :cond_34
    const/4 p0, 0x1

    return p0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .registers 6

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_26

    .line 196
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_14

    const/16 v4, 0x39

    if-le v3, v4, :cond_22

    :cond_14
    const v4, 0xff10

    if-lt v3, v4, :cond_1e

    const v4, 0xff19

    if-le v3, v4, :cond_22

    :cond_1e
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_25

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_25
    return v1

    :cond_26
    const/4 p0, 0x1

    return p0
.end method

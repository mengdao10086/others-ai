.class public Lmiuix/pinyin/utilities/HindiPinyinConverter;
.super Ljava/lang/Object;
.source "HindiPinyinConverter.java"


# static fields
.field private static final INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/SoftReferenceSingleton<",
            "Lmiuix/pinyin/utilities/HindiPinyinConverter;",
            ">;"
        }
    .end annotation
.end field

.field private static sArrayList:Lmiuix/core/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$SimplePool<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sStringBuilder:Lmiuix/core/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/Pools$SimplePool<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdditionalConsonantPinyins:[Ljava/lang/String;

.field private mAdditionalConsonantUnicodes:[Ljava/lang/String;

.field private mConsonantPinyins:[Ljava/lang/String;

.field private mConsonantUnicodes:[Ljava/lang/String;

.field private mDependentVowelSignPinyins:[Ljava/lang/String;

.field private mDependentVowelSignUnicodes:[Ljava/lang/String;

.field private mDoubleCharacters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndependentVowelPinyins:[Ljava/lang/String;

.field private mIndependentVowelUnicodes:[Ljava/lang/String;

.field private mSingleCharacters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTripleCharacters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVariousSignPinyins:[Ljava/lang/String;

.field private mVariousSignUnicodes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 332
    new-instance v0, Lmiuix/pinyin/utilities/HindiPinyinConverter$1;

    invoke-direct {v0}, Lmiuix/pinyin/utilities/HindiPinyinConverter$1;-><init>()V

    sput-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    .line 340
    new-instance v0, Lmiuix/pinyin/utilities/HindiPinyinConverter$2;

    invoke-direct {v0}, Lmiuix/pinyin/utilities/HindiPinyinConverter$2;-><init>()V

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSimplePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    .line 352
    new-instance v0, Lmiuix/pinyin/utilities/HindiPinyinConverter$3;

    invoke-direct {v0}, Lmiuix/pinyin/utilities/HindiPinyinConverter$3;-><init>()V

    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSimplePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SimplePool;

    move-result-object v0

    sput-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    invoke-direct {p0}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->initUnicodeAndPinyin()V

    .line 369
    invoke-direct {p0}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mapUnicodeToPinyin()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/pinyin/utilities/HindiPinyinConverter$1;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Lmiuix/pinyin/utilities/HindiPinyinConverter;-><init>()V

    return-void
.end method

.method private static varargs concat([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 496
    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 497
    array-length v1, p0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    aget-object v3, p0, v2

    .line 498
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 500
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 501
    sget-object v1, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v1, v0}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getInstance()Lmiuix/pinyin/utilities/HindiPinyinConverter;
    .registers 1

    .line 376
    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->INSTANCE:Lmiuix/core/util/SoftReferenceSingleton;

    invoke-virtual {v0}, Lmiuix/core/util/SoftReferenceSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;

    return-object v0
.end method

.method private initUnicodeAndPinyin()V
    .registers 25

    move-object/from16 v0, p0

    const/16 v1, 0xc

    .line 70
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelUnicodes:[Ljava/lang/String;

    .line 71
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelPinyins:[Ljava/lang/String;

    const/16 v2, 0xf

    .line 73
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    .line 74
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    const/16 v3, 0x23

    .line 76
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    .line 77
    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    const/16 v3, 0x8

    .line 79
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    .line 80
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    const/4 v4, 0x3

    .line 82
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    .line 83
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    .line 85
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    .line 86
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    .line 87
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    .line 92
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelUnicodes:[Ljava/lang/String;

    const-string v6, "\u0905"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 93
    const-string v6, "\u0906"

    const/4 v8, 0x1

    aput-object v6, v5, v8

    .line 94
    const-string v6, "\u0907"

    const/4 v9, 0x2

    aput-object v6, v5, v9

    .line 95
    const-string v6, "\u0908"

    aput-object v6, v5, v4

    .line 96
    const-string v6, "\u0909"

    const/4 v10, 0x4

    aput-object v6, v5, v10

    .line 97
    const-string v6, "\u090a"

    const/4 v11, 0x5

    aput-object v6, v5, v11

    .line 98
    const-string v6, "\u090b"

    const/4 v12, 0x6

    aput-object v6, v5, v12

    .line 99
    const-string v6, "\u090f"

    const/4 v13, 0x7

    aput-object v6, v5, v13

    .line 100
    const-string v6, "\u0910"

    aput-object v6, v5, v3

    .line 101
    const-string v6, "\u0911"

    const/16 v14, 0x9

    aput-object v6, v5, v14

    .line 102
    const-string v6, "\u0913"

    const/16 v15, 0xa

    aput-object v6, v5, v15

    .line 103
    const-string v6, "\u0914"

    const/16 v16, 0xb

    aput-object v6, v5, v16

    .line 105
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelPinyins:[Ljava/lang/String;

    const-string v6, "a"

    aput-object v6, v5, v7

    .line 106
    const-string v6, "aa"

    aput-object v6, v5, v8

    .line 107
    const-string v17, "i"

    aput-object v17, v5, v9

    .line 108
    const-string v18, "ee"

    aput-object v18, v5, v4

    .line 109
    const-string v18, "u"

    aput-object v18, v5, v10

    .line 110
    const-string v18, "oo"

    aput-object v18, v5, v11

    .line 111
    const-string v18, "r"

    aput-object v18, v5, v12

    .line 112
    const-string v19, "e"

    aput-object v19, v5, v13

    .line 113
    const-string v20, "ai"

    aput-object v20, v5, v3

    .line 114
    const-string v20, "o"

    aput-object v20, v5, v14

    .line 115
    aput-object v20, v5, v15

    .line 116
    const-string v21, "au"

    aput-object v21, v5, v16

    .line 121
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    const-string v21, "\u093e"

    aput-object v21, v5, v7

    .line 122
    const-string v21, "\u093f"

    aput-object v21, v5, v8

    .line 123
    const-string v21, "\u0940"

    aput-object v21, v5, v9

    .line 124
    const-string v21, "\u0941"

    aput-object v21, v5, v4

    .line 125
    const-string v21, "\u0942"

    aput-object v21, v5, v10

    .line 126
    const-string v21, "\u0943"

    aput-object v21, v5, v11

    .line 127
    const-string v21, "\u0944"

    aput-object v21, v5, v12

    .line 128
    const-string v21, "\u0945"

    aput-object v21, v5, v13

    .line 129
    const-string v21, "\u0947"

    aput-object v21, v5, v3

    .line 130
    const-string v21, "\u0948"

    aput-object v21, v5, v14

    .line 131
    const-string v21, "\u0949"

    aput-object v21, v5, v15

    .line 132
    const-string v21, "\u094b"

    aput-object v21, v5, v16

    .line 133
    const-string v21, "\u094c"

    aput-object v21, v5, v1

    .line 134
    const-string v21, "\u094e"

    const/16 v22, 0xd

    aput-object v21, v5, v22

    .line 135
    const-string v21, "\u094f"

    const/16 v23, 0xe

    aput-object v21, v5, v23

    .line 137
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aput-object v6, v5, v7

    .line 138
    aput-object v17, v5, v8

    .line 139
    const-string v6, "ee"

    aput-object v6, v5, v9

    .line 140
    const-string v6, "u"

    aput-object v6, v5, v4

    .line 141
    const-string v6, "oo"

    aput-object v6, v5, v10

    .line 142
    aput-object v18, v5, v11

    .line 143
    const-string v6, "R"

    aput-object v6, v5, v12

    .line 144
    aput-object v19, v5, v13

    .line 145
    aput-object v19, v5, v3

    .line 146
    const-string v6, "ai"

    aput-object v6, v5, v14

    .line 147
    aput-object v20, v5, v15

    .line 148
    aput-object v20, v5, v16

    .line 149
    const-string v6, "au"

    aput-object v6, v5, v1

    .line 150
    aput-object v19, v5, v22

    .line 151
    const-string v6, "aw"

    aput-object v6, v5, v23

    .line 156
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    const-string v6, "\u0915"

    aput-object v6, v5, v7

    .line 157
    const-string v6, "\u0916"

    aput-object v6, v5, v8

    .line 158
    const-string v6, "\u0917"

    aput-object v6, v5, v9

    .line 159
    const-string v6, "\u0918"

    aput-object v6, v5, v4

    .line 160
    const-string v6, "\u0919"

    aput-object v6, v5, v10

    .line 161
    const-string v6, "\u091a"

    aput-object v6, v5, v11

    .line 162
    const-string v6, "\u091b"

    aput-object v6, v5, v12

    .line 163
    const-string v6, "\u091c"

    aput-object v6, v5, v13

    .line 164
    const-string v6, "\u091d"

    aput-object v6, v5, v3

    .line 165
    const-string v6, "\u091e"

    aput-object v6, v5, v14

    .line 166
    const-string v6, "\u091f"

    aput-object v6, v5, v15

    .line 167
    const-string v6, "\u0920"

    aput-object v6, v5, v16

    .line 168
    const-string v6, "\u0921"

    aput-object v6, v5, v1

    .line 169
    const-string v6, "\u0922"

    aput-object v6, v5, v22

    .line 170
    const-string v6, "\u0923"

    aput-object v6, v5, v23

    .line 171
    const-string v6, "\u0924"

    aput-object v6, v5, v2

    const/16 v6, 0x10

    .line 172
    const-string v17, "\u0925"

    aput-object v17, v5, v6

    const/16 v6, 0x11

    .line 173
    const-string v17, "\u0926"

    aput-object v17, v5, v6

    const/16 v6, 0x12

    .line 174
    const-string v17, "\u0927"

    aput-object v17, v5, v6

    const/16 v6, 0x13

    .line 175
    const-string v17, "\u0928"

    aput-object v17, v5, v6

    const/16 v6, 0x14

    .line 176
    const-string v17, "\u0929"

    aput-object v17, v5, v6

    const/16 v6, 0x15

    .line 177
    const-string v17, "\u092a"

    aput-object v17, v5, v6

    const/16 v6, 0x16

    .line 178
    const-string v17, "\u092b"

    aput-object v17, v5, v6

    const/16 v6, 0x17

    .line 179
    const-string v17, "\u092c"

    aput-object v17, v5, v6

    const/16 v6, 0x18

    .line 180
    const-string v17, "\u092d"

    aput-object v17, v5, v6

    const/16 v6, 0x19

    .line 181
    const-string v17, "\u092e"

    aput-object v17, v5, v6

    const/16 v6, 0x1a

    .line 182
    const-string v17, "\u092f"

    aput-object v17, v5, v6

    const/16 v6, 0x1b

    .line 183
    const-string v17, "\u0930"

    aput-object v17, v5, v6

    const/16 v6, 0x1c

    .line 184
    const-string v17, "\u0931"

    aput-object v17, v5, v6

    const/16 v6, 0x1d

    .line 185
    const-string v17, "\u0932"

    aput-object v17, v5, v6

    const/16 v6, 0x1e

    .line 186
    const-string v17, "\u0935"

    aput-object v17, v5, v6

    const/16 v6, 0x1f

    .line 187
    const-string v17, "\u0936"

    aput-object v17, v5, v6

    const/16 v6, 0x20

    .line 188
    const-string v17, "\u0937"

    aput-object v17, v5, v6

    const/16 v6, 0x21

    .line 189
    const-string v17, "\u0938"

    aput-object v17, v5, v6

    const/16 v6, 0x22

    .line 190
    const-string v17, "\u0939"

    aput-object v17, v5, v6

    .line 192
    iget-object v5, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    const-string v6, "k"

    aput-object v6, v5, v7

    .line 193
    const-string v6, "kh"

    aput-object v6, v5, v8

    .line 194
    const-string v6, "g"

    aput-object v6, v5, v9

    .line 195
    const-string v6, "gh"

    aput-object v6, v5, v4

    .line 196
    const-string v6, "ng"

    aput-object v6, v5, v10

    .line 197
    const-string v6, "c"

    aput-object v6, v5, v11

    .line 198
    const-string v6, "ch"

    aput-object v6, v5, v12

    .line 199
    const-string v6, "j"

    aput-object v6, v5, v13

    .line 200
    const-string v6, "jh"

    aput-object v6, v5, v3

    .line 201
    const-string v3, "ny"

    aput-object v3, v5, v14

    .line 202
    const-string v3, "T"

    aput-object v3, v5, v15

    .line 203
    const-string v3, "Th"

    aput-object v3, v5, v16

    .line 204
    const-string v3, "D"

    aput-object v3, v5, v1

    .line 205
    const-string v1, "Dh"

    aput-object v1, v5, v22

    .line 206
    const-string v1, "N"

    aput-object v1, v5, v23

    .line 207
    const-string v1, "t"

    aput-object v1, v5, v2

    const/16 v1, 0x10

    .line 208
    const-string v2, "th"

    aput-object v2, v5, v1

    const/16 v1, 0x11

    .line 209
    const-string v2, "d"

    aput-object v2, v5, v1

    const/16 v1, 0x12

    .line 210
    const-string v2, "dh"

    aput-object v2, v5, v1

    const/16 v1, 0x13

    .line 211
    const-string v2, "n"

    aput-object v2, v5, v1

    const/16 v1, 0x14

    .line 212
    const-string v2, "Nn"

    aput-object v2, v5, v1

    const/16 v1, 0x15

    .line 213
    const-string v2, "p"

    aput-object v2, v5, v1

    const/16 v1, 0x16

    .line 214
    const-string v2, "ph"

    aput-object v2, v5, v1

    const/16 v1, 0x17

    .line 215
    const-string v2, "b"

    aput-object v2, v5, v1

    const/16 v1, 0x18

    .line 216
    const-string v2, "bh"

    aput-object v2, v5, v1

    const/16 v1, 0x19

    .line 217
    const-string v2, "m"

    aput-object v2, v5, v1

    const/16 v1, 0x1a

    .line 218
    const-string v2, "y"

    aput-object v2, v5, v1

    const/16 v1, 0x1b

    .line 219
    aput-object v18, v5, v1

    const/16 v1, 0x1c

    .line 220
    const-string v2, "R"

    aput-object v2, v5, v1

    const/16 v1, 0x1d

    .line 221
    const-string v2, "l"

    aput-object v2, v5, v1

    const/16 v1, 0x1e

    .line 222
    const-string v2, "v"

    aput-object v2, v5, v1

    const/16 v1, 0x1f

    .line 223
    const-string v2, "sh"

    aput-object v2, v5, v1

    const/16 v1, 0x20

    .line 224
    const-string v2, "S"

    aput-object v2, v5, v1

    const/16 v1, 0x21

    .line 225
    const-string v2, "s"

    aput-object v2, v5, v1

    const/16 v1, 0x22

    .line 226
    const-string v2, "h"

    aput-object v2, v5, v1

    .line 231
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    const-string v2, "\u0958"

    aput-object v2, v1, v7

    .line 232
    const-string v2, "\u0959"

    aput-object v2, v1, v8

    .line 233
    const-string v2, "\u095a"

    aput-object v2, v1, v9

    .line 234
    const-string v2, "\u095b"

    aput-object v2, v1, v4

    .line 235
    const-string v2, "\u095c"

    aput-object v2, v1, v10

    .line 236
    const-string v2, "\u095d"

    aput-object v2, v1, v11

    .line 237
    const-string v2, "\u095e"

    aput-object v2, v1, v12

    .line 238
    const-string v2, "\u095f"

    aput-object v2, v1, v13

    .line 240
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    const-string v2, "q"

    aput-object v2, v1, v7

    .line 241
    const-string v2, "khh"

    aput-object v2, v1, v8

    .line 242
    const-string v2, "ghh"

    aput-object v2, v1, v9

    .line 243
    const-string v2, "z"

    aput-object v2, v1, v4

    .line 244
    const-string v2, "Ddh"

    aput-object v2, v1, v10

    .line 245
    const-string v2, "rh"

    aput-object v2, v1, v11

    .line 246
    const-string v2, "f"

    aput-object v2, v1, v12

    .line 247
    const-string v2, "Y"

    aput-object v2, v1, v13

    .line 252
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    const-string v2, "\u0901"

    aput-object v2, v1, v7

    .line 253
    const-string v2, "\u0902"

    aput-object v2, v1, v8

    .line 254
    const-string v2, "\u0903"

    aput-object v2, v1, v9

    .line 256
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    const-string v2, "an"

    aput-object v2, v1, v7

    .line 257
    const-string v2, "an"

    aput-object v2, v1, v8

    .line 258
    const-string v2, "ah"

    aput-object v2, v1, v9

    return-void
.end method

.method private mapUnicodeToPinyin()V
    .registers 12

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x23

    if-ge v1, v2, :cond_27

    .line 264
    iget-object v2, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 266
    iget-object v4, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_27
    move v1, v0

    :goto_28
    const/16 v3, 0xc

    if-ge v1, v3, :cond_3c

    .line 269
    iget-object v3, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelUnicodes:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 270
    iget-object v4, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mIndependentVowelPinyins:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 271
    iget-object v5, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3c
    move v1, v0

    :goto_3d
    const/16 v4, 0x8

    if-ge v1, v4, :cond_51

    .line 274
    iget-object v4, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 275
    iget-object v5, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 276
    iget-object v6, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_51
    move v1, v0

    :goto_52
    const/4 v5, 0x3

    const/16 v6, 0xf

    if-ge v1, v2, :cond_cc

    move v7, v0

    :goto_58
    if-ge v7, v6, :cond_90

    .line 282
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 283
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 284
    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    :cond_90
    move v6, v0

    :goto_91
    if-ge v6, v5, :cond_c9

    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 288
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 289
    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_91

    :cond_c9
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    :cond_cc
    move v1, v0

    :goto_cd
    if-ge v1, v4, :cond_144

    move v7, v0

    :goto_d0
    if-ge v7, v6, :cond_108

    .line 294
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 295
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mAdditionalConsonantPinyins:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 296
    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_d0

    :cond_108
    move v7, v0

    :goto_109
    if-ge v7, v5, :cond_141

    .line 299
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    aget-object v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 300
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 301
    iget-object v10, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_109

    :cond_141
    add-int/lit8 v1, v1, 0x1

    goto :goto_cd

    :cond_144
    move v1, v0

    :goto_145
    if-ge v1, v2, :cond_168

    .line 305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\u094d"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 306
    iget-object v7, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v7, v7, v1

    .line 307
    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_145

    :cond_168
    move v1, v0

    :goto_169
    if-ge v1, v3, :cond_16e

    add-int/lit8 v1, v1, 0x1

    goto :goto_169

    :cond_16e
    move v1, v0

    :goto_16f
    if-ge v1, v2, :cond_1c6

    move v3, v0

    :goto_172
    if-ge v3, v6, :cond_1c3

    move v4, v0

    :goto_175
    if-ge v4, v5, :cond_1c0

    .line 321
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignUnicodes:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 322
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mConsonantPinyins:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDependentVowelSignPinyins:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mVariousSignPinyins:[Ljava/lang/String;

    aget-object v9, v9, v4

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 323
    iget-object v9, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_175

    :cond_1c0
    add-int/lit8 v3, v3, 0x1

    goto :goto_172

    :cond_1c3
    add-int/lit8 v1, v1, 0x1

    goto :goto_16f

    .line 329
    :cond_1c6
    iget-object v0, p0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    const-string v1, "\u0905\u0902"

    const-string v2, "am"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static stringToUnicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 506
    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_38

    .line 508
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 509
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1d

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v2, v4

    :cond_1d
    const/16 v4, 0x80

    if-ge v3, v4, :cond_25

    .line 515
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 517
    :cond_25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "\\u%04x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_36
    add-int/2addr v2, v5

    goto :goto_d

    .line 520
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 521
    sget-object v1, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v1, v0}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public hindiToPinyin(Ljava/lang/String;)Ljava/lang/String;
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 422
    sget-object v4, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v4}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_15
    const-string v7, "HindiPinyinConverter"

    if-ge v6, v5, :cond_122

    .line 424
    invoke-static {v1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 425
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int v9, v6, v8

    .line 426
    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 431
    const-string v10, ""

    if-ge v9, v5, :cond_3a

    .line 432
    invoke-static {v1, v9}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 433
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int v11, v9, v8

    .line 434
    invoke-virtual {v1, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_3b

    :cond_3a
    move-object v11, v10

    .line 436
    :goto_3b
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_55

    .line 438
    iget-object v7, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 439
    iget-object v7, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    :cond_52
    :goto_52
    move v6, v9

    goto/16 :goto_11b

    :cond_55
    add-int v12, v9, v8

    if-ge v12, v5, :cond_68

    .line 445
    invoke-static {v1, v12}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v8

    .line 446
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int v13, v12, v8

    .line 447
    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_69

    :cond_68
    move-object v13, v10

    .line 449
    :goto_69
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_b5

    .line 451
    filled-new-array {v6, v11}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 452
    iget-object v14, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_89

    .line 453
    iget-object v6, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    goto :goto_ea

    .line 455
    :cond_89
    iget-object v8, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9b

    .line 456
    iget-object v7, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    goto :goto_52

    .line 460
    :cond_9b
    filled-new-array {v6, v11, v13}, [Ljava/lang/String;

    move-result-object v8

    .line 461
    invoke-static {v8}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->stringToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v6, v11, v13, v8}, [Ljava/lang/Object;

    move-result-object v6

    .line 460
    const-string v8, "Ignore unknown hindi: %s%s%s %s"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 465
    :cond_b5
    filled-new-array {v6, v11}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 466
    filled-new-array {v14, v13}, [Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 467
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 468
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mTripleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    add-int/2addr v12, v8

    move v6, v12

    goto :goto_11b

    .line 470
    :cond_d9
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 471
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mDoubleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    :goto_ea
    add-int/2addr v9, v8

    goto/16 :goto_52

    .line 473
    :cond_ed
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_100

    .line 474
    iget-object v1, v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->mSingleCharacters:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    goto/16 :goto_52

    .line 478
    :cond_100
    filled-new-array {v6, v11, v13}, [Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-static {v1}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->concat([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->stringToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v6, v11, v13, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 478
    const-string v6, "Ignore unknown hindi: \'%s%s%s\' \'%s\'"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_52

    .line 483
    :goto_11b
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    goto/16 :goto_15

    .line 488
    :cond_122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 489
    sget-object v5, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sStringBuilder:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v5, v4}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 491
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "hindiToPinyin(): using time %d ms"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public hindiToPinyins(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 385
    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v0}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 386
    invoke-virtual {p0, p1}, Lmiuix/pinyin/utilities/HindiPinyinConverter;->hindiToPinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 387
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    const-string v1, "ee"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 390
    const-string v2, "ii"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_20
    const-string v1, "oo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 394
    const-string v2, "uu"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_31
    const-string v1, "v"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 398
    const-string v2, "w"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_42
    sget-object p1, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {p1}, Lmiuix/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 401
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4e
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 403
    const-string v4, "aa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4e

    const-string v4, "a"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 404
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 407
    :cond_79
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 408
    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 409
    sget-object v2, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v2, v0}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    .line 410
    sget-object v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;->sArrayList:Lmiuix/core/util/Pools$SimplePool;

    invoke-virtual {v0, p1}, Lmiuix/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)V

    return-object v1
.end method

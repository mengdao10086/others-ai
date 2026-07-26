.class Lmiuix/pinyin/utilities/HindiPinyinConverter$1;
.super Lmiuix/core/util/SoftReferenceSingleton;
.source "HindiPinyinConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/pinyin/utilities/HindiPinyinConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/core/util/SoftReferenceSingleton<",
        "Lmiuix/pinyin/utilities/HindiPinyinConverter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 333
    invoke-direct {p0}, Lmiuix/core/util/SoftReferenceSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance()Ljava/lang/Object;
    .registers 2

    .line 333
    invoke-virtual {p0}, Lmiuix/pinyin/utilities/HindiPinyinConverter$1;->createInstance()Lmiuix/pinyin/utilities/HindiPinyinConverter;

    move-result-object v0

    return-object v0
.end method

.method protected createInstance()Lmiuix/pinyin/utilities/HindiPinyinConverter;
    .registers 3

    .line 336
    new-instance v0, Lmiuix/pinyin/utilities/HindiPinyinConverter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/pinyin/utilities/HindiPinyinConverter;-><init>(Lmiuix/pinyin/utilities/HindiPinyinConverter$1;)V

    return-object v0
.end method

.class Lmiuix/animation/property/ValueProperty$2;
.super Lmiuix/animation/property/IntValueProperty;
.source "ValueProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/property/ValueProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;F)V
    .registers 3

    .line 176
    invoke-direct {p0, p1, p2}, Lmiuix/animation/property/IntValueProperty;-><init>(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public setIntValue(Ljava/lang/Object;I)V
    .registers 4

    const/16 v0, 0xff

    if-le p2, v0, :cond_8

    .line 180
    invoke-super {p0, p1, v0}, Lmiuix/animation/property/IntValueProperty;->setIntValue(Ljava/lang/Object;I)V

    goto :goto_e

    :cond_8
    if-gez p2, :cond_e

    const/4 v0, 0x0

    .line 182
    invoke-super {p0, p1, v0}, Lmiuix/animation/property/IntValueProperty;->setIntValue(Ljava/lang/Object;I)V

    .line 184
    :cond_e
    :goto_e
    invoke-super {p0, p1, p2}, Lmiuix/animation/property/IntValueProperty;->setIntValue(Ljava/lang/Object;I)V

    return-void
.end method

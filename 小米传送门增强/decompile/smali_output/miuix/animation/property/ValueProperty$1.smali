.class Lmiuix/animation/property/ValueProperty$1;
.super Lmiuix/animation/property/ValueProperty;
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

    .line 160
    invoke-direct {p0, p1, p2}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;F)V
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v0

    if-lez v1, :cond_a

    .line 164
    invoke-super {p0, p1, v0}, Lmiuix/animation/property/ValueProperty;->setValue(Ljava/lang/Object;F)V

    goto :goto_12

    :cond_a
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_12

    .line 166
    invoke-super {p0, p1, v0}, Lmiuix/animation/property/ValueProperty;->setValue(Ljava/lang/Object;F)V

    .line 168
    :cond_12
    :goto_12
    invoke-super {p0, p1, p2}, Lmiuix/animation/property/ValueProperty;->setValue(Ljava/lang/Object;F)V

    return-void
.end method

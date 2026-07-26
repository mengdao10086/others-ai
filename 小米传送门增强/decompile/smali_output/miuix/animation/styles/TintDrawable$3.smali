.class synthetic Lmiuix/animation/styles/TintDrawable$3;
.super Ljava/lang/Object;
.source "TintDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/styles/TintDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$miuix$animation$ITouchStyle$TouchRectGravity:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 352
    invoke-static {}, Lmiuix/animation/ITouchStyle$TouchRectGravity;->values()[Lmiuix/animation/ITouchStyle$TouchRectGravity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiuix/animation/styles/TintDrawable$3;->$SwitchMap$miuix$animation$ITouchStyle$TouchRectGravity:[I

    :try_start_9
    sget-object v1, Lmiuix/animation/ITouchStyle$TouchRectGravity;->TOP_LEFT:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lmiuix/animation/styles/TintDrawable$3;->$SwitchMap$miuix$animation$ITouchStyle$TouchRectGravity:[I

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchRectGravity;->TOP_CENTER:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lmiuix/animation/styles/TintDrawable$3;->$SwitchMap$miuix$animation$ITouchStyle$TouchRectGravity:[I

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchRectGravity;->CENTER_LEFT:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lmiuix/animation/styles/TintDrawable$3;->$SwitchMap$miuix$animation$ITouchStyle$TouchRectGravity:[I

    sget-object v1, Lmiuix/animation/ITouchStyle$TouchRectGravity;->CENTER_IN_PARENT:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method

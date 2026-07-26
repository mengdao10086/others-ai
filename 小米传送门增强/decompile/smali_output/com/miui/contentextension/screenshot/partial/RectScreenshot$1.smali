.class synthetic Lcom/miui/contentextension/screenshot/partial/RectScreenshot$1;
.super Ljava/lang/Object;
.source "RectScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/screenshot/partial/RectScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$miui$contentextension$screenshot$partial$TouchAreaEnum:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 166
    invoke-static {}, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->values()[Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot$1;->$SwitchMap$com$miui$contentextension$screenshot$partial$TouchAreaEnum:[I

    :try_start_9
    sget-object v1, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot$1;->$SwitchMap$com$miui$contentextension$screenshot$partial$TouchAreaEnum:[I

    sget-object v1, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->LEFT_TOP:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot$1;->$SwitchMap$com$miui$contentextension$screenshot$partial$TouchAreaEnum:[I

    sget-object v1, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->RIGHT_TOP:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot$1;->$SwitchMap$com$miui$contentextension$screenshot$partial$TouchAreaEnum:[I

    sget-object v1, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->LEFT_BOTTOM:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot$1;->$SwitchMap$com$miui$contentextension$screenshot$partial$TouchAreaEnum:[I

    sget-object v1, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->RIGHT_BOTTOM:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot$1;->$SwitchMap$com$miui$contentextension$screenshot$partial$TouchAreaEnum:[I

    sget-object v1, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER_LEFT:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot$1;->$SwitchMap$com$miui$contentextension$screenshot$partial$TouchAreaEnum:[I

    sget-object v1, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER_TOP:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot$1;->$SwitchMap$com$miui$contentextension$screenshot$partial$TouchAreaEnum:[I

    sget-object v1, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER_RIGHT:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot$1;->$SwitchMap$com$miui$contentextension$screenshot$partial$TouchAreaEnum:[I

    sget-object v1, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->CENTER_BOTTOM:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/miui/contentextension/screenshot/partial/RectScreenshot$1;->$SwitchMap$com$miui$contentextension$screenshot$partial$TouchAreaEnum:[I

    sget-object v1, Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;->OUT_OF_BOUNDS:Lcom/miui/contentextension/screenshot/partial/TouchAreaEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    return-void
.end method

.class Lmiuix/view/ExtendedVibrator;
.super Ljava/lang/Object;
.source "ExtendedVibrator.java"

# interfaces
.implements Lmiuix/view/HapticFeedbackProvider;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtendedVibrator"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 29
    invoke-static {}, Lmiuix/view/ExtendedVibrator;->initialize()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initialize()V
    .registers 2

    .line 33
    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const-string v1, "ExtendedVibrator"

    if-gez v0, :cond_c

    .line 34
    const-string v0, "MiuiHapticFeedbackConstants not found."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 37
    :cond_c
    new-instance v0, Lmiuix/view/ExtendedVibrator;

    invoke-direct {v0}, Lmiuix/view/ExtendedVibrator;-><init>()V

    invoke-static {v0}, Lmiuix/view/HapticCompat;->registerProvider(Lmiuix/view/HapticFeedbackProvider;)V

    .line 38
    const-string v0, "setup ExtendedVibrator success."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public performHapticFeedback(Landroid/view/View;I)Z
    .registers 5

    .line 21
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_VIRTUAL_RELEASE:I

    if-ne p2, v0, :cond_1e

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performHapticFeedback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmiuix/HapticLog;->printTrace(Ljava/lang/String;)V

    const/4 p2, 0x2

    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result p1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

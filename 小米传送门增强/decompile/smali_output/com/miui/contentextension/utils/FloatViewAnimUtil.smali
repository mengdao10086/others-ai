.class public Lcom/miui/contentextension/utils/FloatViewAnimUtil;
.super Ljava/lang/Object;
.source "FloatViewAnimUtil.java"


# static fields
.field public static final FLOAT_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field public static final FLOAT_OUT_INTERPOLATOR:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 24
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/miui/contentextension/utils/FloatViewAnimUtil;->FLOAT_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 27
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/miui/contentextension/utils/FloatViewAnimUtil;->FLOAT_OUT_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

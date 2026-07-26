.class Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;
.super Ljava/lang/Object;
.source "FolmeHover.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/controller/FolmeHover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerViewHoverListener"
.end annotation


# instance fields
.field private mHoverMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lmiuix/animation/controller/FolmeHover;",
            "[",
            "Lmiuix/animation/base/AnimConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->mHoverMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/animation/controller/FolmeHover$1;)V
    .registers 2

    .line 351
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;-><init>()V

    return-void
.end method

.method private getHoverTranslationXTag(Landroid/view/View;)F
    .registers 4

    .line 377
    sget v0, Lmiuix/folme/R$id;->miuix_animation_tag_hover_set_translation_x:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Float;

    if-eqz v1, :cond_15

    .line 378
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method varargs addHover(Lmiuix/animation/controller/FolmeHover;[Lmiuix/animation/base/AnimConfig;)V
    .registers 4

    .line 355
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->mHoverMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 365
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->mHoverMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 366
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/controller/FolmeHover;

    .line 367
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmiuix/animation/base/AnimConfig;

    .line 368
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_3d

    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->getHoverTranslationXTag(Landroid/view/View;)F

    move-result v3

    # getter for: Lmiuix/animation/controller/FolmeHover;->mExtraTranslationX:F
    invoke-static {v2}, Lmiuix/animation/controller/FolmeHover;->access$100(Lmiuix/animation/controller/FolmeHover;)F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3d

    .line 369
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->getHoverTranslationXTag(Landroid/view/View;)F

    move-result v3

    # setter for: Lmiuix/animation/controller/FolmeHover;->mExtraTranslationX:F
    invoke-static {v2, v3}, Lmiuix/animation/controller/FolmeHover;->access$102(Lmiuix/animation/controller/FolmeHover;F)F

    .line 371
    :cond_3d
    # invokes: Lmiuix/animation/controller/FolmeHover;->handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V
    invoke-static {v2, p1, p2, v1}, Lmiuix/animation/controller/FolmeHover;->access$200(Lmiuix/animation/controller/FolmeHover;Landroid/view/View;Landroid/view/MotionEvent;[Lmiuix/animation/base/AnimConfig;)V

    goto :goto_a

    :cond_41
    const/4 p1, 0x0

    return p1
.end method

.method removeHover(Lmiuix/animation/controller/FolmeHover;)Z
    .registers 3

    .line 359
    iget-object v0, p0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->mHoverMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object p1, p0, Lmiuix/animation/controller/FolmeHover$InnerViewHoverListener;->mHoverMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result p1

    return p1
.end method

.class public abstract Landroidx/recyclerview/widget/SpringRecyclerView;
.super Landroidx/recyclerview/widget/RemixRecyclerView;
.source "SpringRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;,
        Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;,
        Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffectFactory;,
        Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffect;
    }
.end annotation


# static fields
.field private static final NESTED_SCROLL_HELPER:Ljava/lang/reflect/Field;

.field private static final NON_EFFECT_FACTORY:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

.field private static final VIEW_FLINGER:Ljava/lang/reflect/Field;


# instance fields
.field private mHorizontalOverScrolling:Z

.field private mInGlobalRomMode:Z

.field private mManagedScrollState:I

.field private mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

.field private mSpringHelper:Lmiuix/spring/view/SpringHelper;

.field private mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

.field private mSpringStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/spring/view/SpringStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSpringX:F

.field private mSpringY:F

.field private mVerticalOverScrolling:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 396
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    :try_start_2
    const-string v1, "mViewFlinger"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/recyclerview/widget/SpringRecyclerView;->VIEW_FLINGER:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    .line 397
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_e} :catch_29

    .line 402
    :try_start_e
    const-string v1, "mScrollingChildHelper"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->NESTED_SCROLL_HELPER:Ljava/lang/reflect/Field;

    .line 403
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_19
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e .. :try_end_19} :catch_22

    .line 427
    new-instance v0, Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffectFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView$NonEdgeEffectFactory;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView$1;)V

    sput-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->NON_EFFECT_FACTORY:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    return-void

    :catch_22
    move-exception v0

    .line 405
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_29
    move-exception v0

    .line 399
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 44
    sget v0, Landroidx/recyclerview/R$attr;->recyclerViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RemixRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringStateListeners:Ljava/util/List;

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringX:F

    .line 35
    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringY:F

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    .line 306
    new-instance p2, Landroidx/recyclerview/widget/SpringRecyclerView$1;

    invoke-direct {p2, p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    .line 49
    sget-boolean p2, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    iput-boolean p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mInGlobalRomMode:Z

    .line 50
    new-instance p2, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;Landroidx/recyclerview/widget/SpringRecyclerView$1;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    .line 51
    new-instance p2, Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    invoke-direct {p2, p0, p0}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;-><init>(Landroidx/recyclerview/widget/SpringRecyclerView;Landroid/view/View;)V

    iput-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    .line 54
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->isNestedScrollingEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 55
    iget-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/SpringRecyclerView;->replaceViewFlinger(Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;)V

    .line 56
    iget-object p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/SpringRecyclerView;->replaceNestedScrollingHelper(Landroidx/core/view/NestedScrollingChildHelper;)V

    .line 57
    iget-boolean p2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mInGlobalRomMode:Z

    if-eqz p2, :cond_45

    .line 58
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    goto :goto_4a

    .line 61
    :cond_45
    sget-object p1, Landroidx/recyclerview/widget/SpringRecyclerView;->NON_EFFECT_FACTORY:Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    :goto_4a
    return-void
.end method

.method static synthetic access$100(Landroidx/recyclerview/widget/SpringRecyclerView;)Lmiuix/spring/view/SpringHelper;
    .registers 1

    .line 25
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    return-object p0
.end method

.method static synthetic access$1000(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;
    .registers 1

    .line 25
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/recyclerview/widget/SpringRecyclerView;)Z
    .registers 1

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->springAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroidx/recyclerview/widget/SpringRecyclerView;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    return p0
.end method

.method static synthetic access$302(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    return p1
.end method

.method static synthetic access$400(Landroidx/recyclerview/widget/SpringRecyclerView;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    return p0
.end method

.method static synthetic access$402(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    return p1
.end method

.method static synthetic access$502(Landroidx/recyclerview/widget/SpringRecyclerView;F)F
    .registers 2

    .line 25
    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringX:F

    return p1
.end method

.method static synthetic access$602(Landroidx/recyclerview/widget/SpringRecyclerView;F)F
    .registers 2

    .line 25
    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringY:F

    return p1
.end method

.method static synthetic access$700(Landroidx/recyclerview/widget/SpringRecyclerView;)Ljava/util/List;
    .registers 1

    .line 25
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringStateListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;
    .registers 1

    .line 25
    iget-object p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    return-object p0
.end method

.method static synthetic access$900(Landroidx/recyclerview/widget/SpringRecyclerView;)I
    .registers 1

    .line 25
    iget p0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    return p0
.end method

.method private replaceNestedScrollingHelper(Landroidx/core/view/NestedScrollingChildHelper;)V
    .registers 3

    .line 411
    :try_start_0
    sget-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->NESTED_SCROLL_HELPER:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 413
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private replaceViewFlinger(Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;)V
    .registers 3

    .line 419
    :try_start_0
    sget-object v0, Landroidx/recyclerview/widget/SpringRecyclerView;->VIEW_FLINGER:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    .line 421
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private springAvailable()Z
    .registers 3

    .line 164
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->getSpringEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 112
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {v0}, Lmiuix/spring/view/SpringHelper;->getHorizontalDistance()I

    move-result v0

    .line 113
    iget-object v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {v1}, Lmiuix/spring/view/SpringHelper;->getVerticalDistance()I

    move-result v1

    if-nez v0, :cond_15

    if-eqz v1, :cond_11

    goto :goto_15

    .line 120
    :cond_11
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_26

    .line 115
    :cond_15
    :goto_15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 117
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 118
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_26
    return-void
.end method

.method protected getDragFlingVelocityX()I
    .registers 2

    .line 168
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    if-eqz v0, :cond_7

    iget v0, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mDragFlingVelocityX:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method protected getDragFlingVelocityY()I
    .registers 2

    .line 172
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    if-eqz v0, :cond_7

    iget v0, v0, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->mDragFlingVelocityY:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public bridge synthetic getSpringEnabled()Z
    .registers 2

    .line 25
    invoke-super {p0}, Landroidx/recyclerview/widget/RemixRecyclerView;->getSpringEnabled()Z

    move-result v0

    return v0
.end method

.method public getSpringX()F
    .registers 2

    .line 103
    iget v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringX:F

    return v0
.end method

.method public getSpringY()F
    .registers 2

    .line 107
    iget v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringY:F

    return v0
.end method

.method protected isOverScrolling()Z
    .registers 2

    .line 160
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public bridge synthetic onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 25
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 25
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onScrollStateChanged(I)V
    .registers 4

    .line 139
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 140
    iput p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    .line 141
    invoke-direct {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->springAvailable()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 145
    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->isOverScrolling()Z

    move-result v0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1d

    if-eqz v0, :cond_1d

    .line 148
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->stopSpringFling()V

    const/4 v1, 0x0

    .line 149
    iput-boolean v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mHorizontalOverScrolling:Z

    .line 150
    iput-boolean v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mVerticalOverScrolling:Z

    :cond_1d
    if-nez p1, :cond_26

    if-eqz v0, :cond_26

    .line 154
    iget-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {p1}, Lmiuix/spring/view/SpringHelper;->resetDistance()V

    :cond_26
    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 25
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3

    .line 76
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 77
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringNestedScrollingHelper:Landroidx/recyclerview/widget/SpringRecyclerView$SpringNestedScrollingHelper;

    if-eqz v0, :cond_a

    .line 78
    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    :cond_a
    return-void
.end method

.method public bridge synthetic setOverScrollMode(I)V
    .registers 2

    .line 25
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->setOverScrollMode(I)V

    return-void
.end method

.method setScrollState(I)V
    .registers 5

    .line 126
    iget v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mManagedScrollState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    if-nez p1, :cond_1f

    .line 127
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {v0}, Lmiuix/spring/view/SpringHelper;->getHorizontalDistance()I

    move-result v0

    .line 128
    iget-object v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringHelper:Lmiuix/spring/view/SpringHelper;

    invoke-virtual {v1}, Lmiuix/spring/view/SpringHelper;->getVerticalDistance()I

    move-result v1

    .line 129
    iget-object v2, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    if-eqz v2, :cond_1f

    if-nez v0, :cond_1b

    if-eqz v1, :cond_1f

    .line 130
    :cond_1b
    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;->springBack(II)V

    return-void

    .line 134
    :cond_1f
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method public setSpringEnabled(Z)V
    .registers 3

    .line 67
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mInGlobalRomMode:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    return-void

    .line 71
    :cond_7
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RemixRecyclerView;->setSpringEnabled(Z)V

    return-void
.end method

.method public stopScroll()V
    .registers 1

    .line 84
    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView;->stopSpringFling()V

    .line 85
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    return-void
.end method

.method public stopSpringFling()V
    .registers 2

    .line 89
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView;->mSpringFlinger:Landroidx/recyclerview/widget/SpringRecyclerView$SpringFlinger;

    if-eqz v0, :cond_7

    .line 90
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RemixRecyclerView$ViewFlinger;->stop()V

    :cond_7
    return-void
.end method

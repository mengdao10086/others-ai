.class public Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;,
        Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;,
        Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
    }
.end annotation


# instance fields
.field private final mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public mParentVirtualDescendantId:I

.field private mVirtualDescendantId:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 1702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1252
    iput v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 1255
    iput v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mVirtualDescendantId:I

    .line 1703
    iput-object p1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-void
.end method

.method private extrasIntList(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2006
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2007
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 2009
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2010
    iget-object v1, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1a
    return-object v0
.end method

.method private static getActionSymbolicName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_81

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7e

    sparse-switch p0, :sswitch_data_84

    packed-switch p0, :pswitch_data_da

    packed-switch p0, :pswitch_data_ee

    .line 4308
    const-string p0, "ACTION_UNKNOWN"

    return-object p0

    .line 4304
    :pswitch_12
    const-string p0, "ACTION_PRESS_AND_HOLD"

    return-object p0

    .line 4288
    :pswitch_15
    const-string p0, "ACTION_PAGE_RIGHT"

    return-object p0

    .line 4286
    :pswitch_18
    const-string p0, "ACTION_PAGE_LEFT"

    return-object p0

    .line 4282
    :pswitch_1b
    const-string p0, "ACTION_PAGE_DOWN"

    return-object p0

    .line 4284
    :pswitch_1e
    const-string p0, "ACTION_PAGE_UP"

    return-object p0

    .line 4302
    :pswitch_21
    const-string p0, "ACTION_HIDE_TOOLTIP"

    return-object p0

    .line 4300
    :pswitch_24
    const-string p0, "ACTION_SHOW_TOOLTIP"

    return-object p0

    .line 4296
    :pswitch_27
    const-string p0, "ACTION_SET_PROGRESS"

    return-object p0

    .line 4294
    :pswitch_2a
    const-string p0, "ACTION_CONTEXT_CLICK"

    return-object p0

    .line 4280
    :pswitch_2d
    const-string p0, "ACTION_SCROLL_RIGHT"

    return-object p0

    .line 4278
    :pswitch_30
    const-string p0, "ACTION_SCROLL_DOWN"

    return-object p0

    .line 4276
    :pswitch_33
    const-string p0, "ACTION_SCROLL_LEFT"

    return-object p0

    .line 4274
    :pswitch_36
    const-string p0, "ACTION_SCROLL_UP"

    return-object p0

    .line 4292
    :pswitch_39
    const-string p0, "ACTION_SCROLL_TO_POSITION"

    return-object p0

    .line 4290
    :pswitch_3c
    const-string p0, "ACTION_SHOW_ON_SCREEN"

    return-object p0

    .line 4306
    :sswitch_3f
    const-string p0, "ACTION_IME_ENTER"

    return-object p0

    .line 4298
    :sswitch_42
    const-string p0, "ACTION_MOVE_WINDOW"

    return-object p0

    .line 4272
    :sswitch_45
    const-string p0, "ACTION_SET_TEXT"

    return-object p0

    .line 4270
    :sswitch_48
    const-string p0, "ACTION_COLLAPSE"

    return-object p0

    .line 4268
    :sswitch_4b
    const-string p0, "ACTION_EXPAND"

    return-object p0

    .line 4266
    :sswitch_4e
    const-string p0, "ACTION_SET_SELECTION"

    return-object p0

    .line 4260
    :sswitch_51
    const-string p0, "ACTION_CUT"

    return-object p0

    .line 4264
    :sswitch_54
    const-string p0, "ACTION_PASTE"

    return-object p0

    .line 4262
    :sswitch_57
    const-string p0, "ACTION_COPY"

    return-object p0

    .line 4258
    :sswitch_5a
    const-string p0, "ACTION_SCROLL_BACKWARD"

    return-object p0

    .line 4256
    :sswitch_5d
    const-string p0, "ACTION_SCROLL_FORWARD"

    return-object p0

    .line 4254
    :sswitch_60
    const-string p0, "ACTION_PREVIOUS_HTML_ELEMENT"

    return-object p0

    .line 4252
    :sswitch_63
    const-string p0, "ACTION_NEXT_HTML_ELEMENT"

    return-object p0

    .line 4250
    :sswitch_66
    const-string p0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    return-object p0

    .line 4248
    :sswitch_69
    const-string p0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    return-object p0

    .line 4246
    :sswitch_6c
    const-string p0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    return-object p0

    .line 4244
    :sswitch_6f
    const-string p0, "ACTION_ACCESSIBILITY_FOCUS"

    return-object p0

    .line 4242
    :sswitch_72
    const-string p0, "ACTION_LONG_CLICK"

    return-object p0

    .line 4240
    :sswitch_75
    const-string p0, "ACTION_CLICK"

    return-object p0

    .line 4238
    :sswitch_78
    const-string p0, "ACTION_CLEAR_SELECTION"

    return-object p0

    .line 4236
    :sswitch_7b
    const-string p0, "ACTION_SELECT"

    return-object p0

    .line 4234
    :cond_7e
    const-string p0, "ACTION_CLEAR_FOCUS"

    return-object p0

    .line 4232
    :cond_81
    const-string p0, "ACTION_FOCUS"

    return-object p0

    :sswitch_data_84
    .sparse-switch
        0x4 -> :sswitch_7b
        0x8 -> :sswitch_78
        0x10 -> :sswitch_75
        0x20 -> :sswitch_72
        0x40 -> :sswitch_6f
        0x80 -> :sswitch_6c
        0x100 -> :sswitch_69
        0x200 -> :sswitch_66
        0x400 -> :sswitch_63
        0x800 -> :sswitch_60
        0x1000 -> :sswitch_5d
        0x2000 -> :sswitch_5a
        0x4000 -> :sswitch_57
        0x8000 -> :sswitch_54
        0x10000 -> :sswitch_51
        0x20000 -> :sswitch_4e
        0x40000 -> :sswitch_4b
        0x80000 -> :sswitch_48
        0x200000 -> :sswitch_45
        0x1020042 -> :sswitch_42
        0x1020054 -> :sswitch_3f
    .end sparse-switch

    :pswitch_data_da
    .packed-switch 0x1020036
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x1020044
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method

.method public static getClickableSpans(Ljava/lang/CharSequence;)[Landroid/text/style/ClickableSpan;
    .registers 4

    .line 2743
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_15

    .line 2744
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 2745
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v1, Landroid/text/style/ClickableSpan;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/style/ClickableSpan;

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasSpans()Z
    .registers 2

    .line 2764
    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    invoke-direct {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->extrasIntList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 1

    .line 1769
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 1

    .line 1741
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method public static obtain(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 1

    .line 1780
    iget-object p0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 2

    .line 1713
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method


# virtual methods
.method public addAction(I)V
    .registers 3

    .line 1999
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    return-void
.end method

.method public addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V
    .registers 3

    .line 2033
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object p1, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->mAction:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public addChild(Landroid/view/View;I)V
    .registers 4

    .line 1930
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    return-void
.end method

.method public addSpansToExtras(Ljava/lang/CharSequence;Landroid/view/View;)V
    .registers 3

    .line 0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 4132
    :cond_8
    instance-of v2, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    if-nez v2, :cond_d

    return v1

    .line 4135
    :cond_d
    check-cast p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 4136
    iget-object v2, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v2, :cond_18

    .line 4137
    iget-object v2, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v2, :cond_21

    return v1

    .line 4140
    :cond_18
    iget-object v3, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    return v1

    .line 4143
    :cond_21
    iget v2, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mVirtualDescendantId:I

    iget v3, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mVirtualDescendantId:I

    if-eq v2, v3, :cond_28

    return v1

    .line 4146
    :cond_28
    iget v2, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    iget p1, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    if-eq v2, p1, :cond_2f

    return v1

    :cond_2f
    return v0
.end method

.method public getActionList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;",
            ">;"
        }
    .end annotation

    .line 3078
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 3081
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3082
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_23

    .line 3084
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 3085
    new-instance v5, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-direct {v5, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_23
    return-object v1

    .line 3089
    :cond_24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActions()I
    .registers 2

    .line 1984
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v0

    return v0
.end method

.method public getBoundsInParent(Landroid/graphics/Rect;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2229
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 3

    .line 2261
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getChildCount()I
    .registers 2

    .line 1879
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 2644
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 2804
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 3408
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .registers 2

    .line 2620
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 11

    .line 2668
    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->hasSpans()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 2669
    const-string v0, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_START_KEY"

    invoke-direct {p0, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->extrasIntList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2670
    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_END_KEY"

    invoke-direct {p0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->extrasIntList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2671
    const-string v2, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_FLAGS_KEY"

    invoke-direct {p0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->extrasIntList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2672
    const-string v3, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ID_KEY"

    invoke-direct {p0, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->extrasIntList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2673
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2674
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    .line 2673
    invoke-static {v5, v7, v6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2675
    :goto_38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v7, v5, :cond_7b

    .line 2676
    new-instance v5, Landroidx/core/view/accessibility/AccessibilityClickableSpanCompat;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2677
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "androidx.view.accessibility.AccessibilityNodeInfoCompat.SPANS_ACTION_ID_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v5, v6, p0, v8}, Landroidx/core/view/accessibility/AccessibilityClickableSpanCompat;-><init>(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;I)V

    .line 2678
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2676
    invoke-interface {v4, v5, v6, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    :cond_7b
    return-object v4

    .line 2682
    :cond_7c
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewIdResourceName()Ljava/lang/String;
    .registers 2

    .line 2898
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 4121
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public isCheckable()Z
    .registers 2

    .line 2285
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .line 2309
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isClickable()Z
    .registers 2

    .line 2467
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 2515
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFocusable()Z
    .registers 2

    .line 2333
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .registers 2

    .line 2357
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v0

    return v0
.end method

.method public isLongClickable()Z
    .registers 2

    .line 2491
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .registers 2

    .line 2539
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .registers 2

    .line 2563
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .line 2443
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v0

    return v0
.end method

.method public performAction(ILandroid/os/Bundle;)Z
    .registers 4

    .line 2095
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public recycle()V
    .registers 2

    .line 2864
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    return-void
.end method

.method public removeAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z
    .registers 3

    .line 2058
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object p1, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->mAction:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result p1

    return p1
.end method

.method public setAccessibilityFocused(Z)V
    .registers 3

    .line 2433
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    return-void
.end method

.method public setBoundsInParent(Landroid/graphics/Rect;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2252
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 3

    .line 2276
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setCheckable(Z)V
    .registers 3

    .line 2300
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    .line 2324
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .registers 3

    .line 2659
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setClickable(Z)V
    .registers 3

    .line 2482
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method public setCollectionInfo(Ljava/lang/Object;)V
    .registers 3

    .line 3002
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    .line 3003
    :cond_6
    check-cast p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    iget-object p1, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 3002
    :goto_c
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public setCollectionItemInfo(Ljava/lang/Object;)V
    .registers 3

    .line 3011
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_c

    .line 3012
    :cond_6
    check-cast p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    iget-object p1, p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 3011
    :goto_c
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    .line 2834
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 2530
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method

.method public setFocusable(Z)V
    .registers 3

    .line 2348
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    return-void
.end method

.method public setFocused(Z)V
    .registers 3

    .line 2372
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocused(Z)V

    return-void
.end method

.method public setHeading(Z)V
    .registers 3

    .line 3974
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .registers 3

    .line 2635
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPaneTitle(Ljava/lang/CharSequence;)V
    .registers 3

    .line 3850
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPaneTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    .line 2182
    iput v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 2184
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    return-void
.end method

.method public setParent(Landroid/view/View;I)V
    .registers 4

    .line 2209
    iput p2, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 2212
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    return-void
.end method

.method public setRoleDescription(Ljava/lang/CharSequence;)V
    .registers 4

    .line 4066
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AccessibilityNodeInfo.roleDescription"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setScreenReaderFocusable(Z)V
    .registers 3

    .line 3902
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScreenReaderFocusable(Z)V

    return-void
.end method

.method public setScrollable(Z)V
    .registers 3

    .line 2578
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    .line 2458
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .registers 4

    .line 1816
    iput p2, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mVirtualDescendantId:I

    .line 1819
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    return-void
.end method

.method public setStateDescription(Ljava/lang/CharSequence;)V
    .registers 4

    .line 2849
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastR()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2850
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 2852
    :cond_c
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.view.accessibility.AccessibilityNodeInfoCompat.STATE_DESCRIPTION_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_17
    return-void
.end method

.method public setVisibleToUser(Z)V
    .registers 3

    .line 2402
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 4156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4157
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4159
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4161
    invoke-virtual {p0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 4162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInParent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4164
    invoke-virtual {p0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 4165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "; boundsInScreen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4167
    const-string v1, "; packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4168
    const-string v1, "; className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4169
    const-string v1, "; text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4170
    const-string v1, "; contentDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4171
    const-string v1, "; viewId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4173
    const-string v1, "; checkable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isCheckable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4174
    const-string v1, "; checked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4175
    const-string v1, "; focusable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4176
    const-string v1, "; focused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4177
    const-string v1, "; selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4178
    const-string v1, "; clickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4179
    const-string v1, "; longClickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4180
    const-string v1, "; enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4181
    const-string v1, "; password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; scrollable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4184
    const-string v1, "; ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4186
    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActionList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 4187
    :goto_109
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_146

    .line 4188
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 4189
    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v4

    invoke-static {v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActionSymbolicName(I)Ljava/lang/String;

    move-result-object v4

    .line 4190
    const-string v5, "ACTION_UNKNOWN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_133

    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_133

    .line 4191
    invoke-virtual {v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4193
    :cond_133
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4194
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_143

    .line 4195
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_143
    add-int/lit8 v2, v2, 0x1

    goto :goto_109

    .line 4208
    :cond_146
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .line 1720
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

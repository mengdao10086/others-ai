.class public Lmiuix/popupwidget/internal/util/SinglePopControl;
.super Ljava/lang/Object;
.source "SinglePopControl.java"


# static fields
.field private static sPops:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiuix/popupwidget/internal/util/SinglePopControl;->sPops:Landroid/util/SparseArray;

    return-void
.end method

.method private static getAssociatedActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 4

    const/4 v0, 0x0

    move-object v1, v0

    :goto_2
    if-nez v1, :cond_1b

    if-eqz p0, :cond_1b

    .line 51
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_e

    .line 52
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    goto :goto_2

    .line 54
    :cond_e
    instance-of v2, p0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_19

    .line 55
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_2

    :cond_19
    move-object p0, v0

    goto :goto_2

    :cond_1b
    return-object v1
.end method

.method private static getHashKey(Landroid/content/Context;)I
    .registers 2

    .line 44
    invoke-static {p0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->getAssociatedActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_f

    :cond_b
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_f
    return p0
.end method

.method private static hide(Ljava/lang/Object;)V
    .registers 2

    .line 36
    instance-of v0, p0, Landroid/widget/PopupWindow;

    if-eqz v0, :cond_f

    .line 37
    check-cast p0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 38
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_f
    return-void
.end method

.method public static hidePop(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 2

    .line 31
    invoke-static {p0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->getHashKey(Landroid/content/Context;)I

    move-result p0

    .line 32
    sget-object p1, Lmiuix/popupwidget/internal/util/SinglePopControl;->sPops:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public static showPop(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4

    .line 20
    invoke-static {p0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->getHashKey(Landroid/content/Context;)I

    move-result p0

    .line 21
    sget-object v0, Lmiuix/popupwidget/internal/util/SinglePopControl;->sPops:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 22
    sget-object v0, Lmiuix/popupwidget/internal/util/SinglePopControl;->sPops:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    if-eq v0, p1, :cond_1f

    .line 24
    invoke-static {v0}, Lmiuix/popupwidget/internal/util/SinglePopControl;->hide(Ljava/lang/Object;)V

    .line 27
    :cond_1f
    sget-object v0, Lmiuix/popupwidget/internal/util/SinglePopControl;->sPops:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

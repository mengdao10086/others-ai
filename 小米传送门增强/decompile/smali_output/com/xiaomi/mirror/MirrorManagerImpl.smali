.class public Lcom/xiaomi/mirror/MirrorManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile INSTANCE:Lcom/xiaomi/mirror/MirrorManagerImpl; = null

.field private static final PACKAGE_NAME_MIRROR:Ljava/lang/String; = "com.xiaomi.mirror"

.field private static final TAG:Ljava/lang/String; = "MirrorManagerImpl"


# instance fields
.field private mImmersionListPopupWindow:Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;

.field private mMirrorManager:Lcom/xiaomi/mirror/IMirrorManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_6

    return-void

    :cond_6
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/mirror/MirrorManager;->get(Landroid/content/Context;)Lcom/xiaomi/mirror/MirrorManager;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mirror/IMirrorManager;

    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManagerImpl;->mMirrorManager:Lcom/xiaomi/mirror/IMirrorManager;

    if-eqz p1, :cond_38

    new-instance v0, Lcom/xiaomi/mirror/MirrorManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/mirror/MirrorManagerImpl$1;-><init>(Lcom/xiaomi/mirror/MirrorManagerImpl;)V

    invoke-interface {p1, v0}, Lcom/xiaomi/mirror/IMirrorManager;->setOnMirrorMenuClickListener(Lcom/xiaomi/mirror/IMirrorManager$OnMirrorMenuClickListener;)V
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1d

    goto :goto_38

    :catchall_1d
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MirrorManagerImpl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MirrorManagerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    :goto_38
    return-void
.end method

.method public static synthetic access$000(Landroid/view/View;)Lcom/xiaomi/mirror/OnMirrorMenuQueryListener;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/xiaomi/mirror/MirrorManagerImpl;->getOnMirrorMenuQueryListener(Landroid/view/View;)Lcom/xiaomi/mirror/OnMirrorMenuQueryListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/xiaomi/mirror/MirrorManagerImpl;Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mirror/MirrorManagerImpl;->showPopupWindow(Landroid/view/View;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/xiaomi/mirror/MirrorManagerImpl;)Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/xiaomi/mirror/MirrorManagerImpl;->mImmersionListPopupWindow:Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/xiaomi/mirror/MirrorManagerImpl;)Lcom/xiaomi/mirror/IMirrorManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/xiaomi/mirror/MirrorManagerImpl;->mMirrorManager:Lcom/xiaomi/mirror/IMirrorManager;

    return-object p0
.end method

.method public static get(Landroid/content/Context;)Lcom/xiaomi/mirror/MirrorManagerImpl;
    .registers 3

    .line 0
    sget-object v0, Lcom/xiaomi/mirror/MirrorManagerImpl;->INSTANCE:Lcom/xiaomi/mirror/MirrorManagerImpl;

    if-nez v0, :cond_19

    const-class v0, Lcom/xiaomi/mirror/MirrorManagerImpl;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/mirror/MirrorManagerImpl;->INSTANCE:Lcom/xiaomi/mirror/MirrorManagerImpl;

    if-nez v1, :cond_15

    new-instance v1, Lcom/xiaomi/mirror/MirrorManagerImpl;

    invoke-direct {v1, p0}, Lcom/xiaomi/mirror/MirrorManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/mirror/MirrorManagerImpl;->INSTANCE:Lcom/xiaomi/mirror/MirrorManagerImpl;

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_17

    :cond_15
    :goto_15
    monitor-exit v0

    goto :goto_19

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw p0

    :cond_19
    :goto_19
    sget-object p0, Lcom/xiaomi/mirror/MirrorManagerImpl;->INSTANCE:Lcom/xiaomi/mirror/MirrorManagerImpl;

    return-object p0
.end method

.method private static getOnMirrorMenuQueryListener(Landroid/view/View;)Lcom/xiaomi/mirror/OnMirrorMenuQueryListener;
    .registers 3

    .line 0
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    sget v1, Lcom/xiaomi/mirror/opensdk/R$id;->tag_mirror_menu_query_listener:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_11

    instance-of v1, p0, Lcom/xiaomi/mirror/OnMirrorMenuQueryListener;

    if-nez v1, :cond_11

    return-object v0

    :cond_11
    if-nez p0, :cond_14

    goto :goto_17

    :cond_14
    move-object v0, p0

    check-cast v0, Lcom/xiaomi/mirror/OnMirrorMenuQueryListener;

    :goto_17
    return-object v0
.end method

.method private showPopupWindow(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/mirror/MirrorMenu;",
            ">;)V"
        }
    .end annotation

    .line 0
    if-eqz p1, :cond_91

    if-eqz p2, :cond_91

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_91

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManagerImpl;->mImmersionListPopupWindow:Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    goto/16 :goto_91

    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/mirror/MirrorMenu;

    invoke-virtual {v3}, Lcom/xiaomi/mirror/MirrorMenu;->getType()I

    move-result v4

    if-ne v4, v1, :cond_44

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/xiaomi/mirror/opensdk/R$string;->menu_new_display_open:I

    :goto_38
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3c
    invoke-static {v3}, Lcom/xiaomi/mirror/widget/ImmersionAdapter;->buildSettingViewEntry(Ljava/lang/CharSequence;)Lcom/xiaomi/mirror/widget/ImmersionAdapter$ViewEntry;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_44
    invoke-virtual {v3}, Lcom/xiaomi/mirror/MirrorMenu;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_52

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/xiaomi/mirror/opensdk/R$string;->menu_pc_open:I

    goto :goto_38

    :cond_52
    invoke-virtual {v3}, Lcom/xiaomi/mirror/MirrorMenu;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_3c

    :cond_57
    new-instance v2, Lcom/xiaomi/mirror/widget/ImmersionAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/xiaomi/mirror/widget/ImmersionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v0, Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/mirror/MirrorManagerImpl;->mImmersionListPopupWindow:Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;

    invoke-virtual {v0, v2}, Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManagerImpl;->mImmersionListPopupWindow:Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;

    new-instance v2, Lcom/xiaomi/mirror/MirrorManagerImpl$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/xiaomi/mirror/MirrorManagerImpl$2;-><init>(Lcom/xiaomi/mirror/MirrorManagerImpl;Ljava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p2, p0, Lcom/xiaomi/mirror/MirrorManagerImpl;->mImmersionListPopupWindow:Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;

    new-instance v0, Lcom/xiaomi/mirror/MirrorManagerImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/mirror/MirrorManagerImpl$3;-><init>(Lcom/xiaomi/mirror/MirrorManagerImpl;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object p2, p0, Lcom/xiaomi/mirror/MirrorManagerImpl;->mImmersionListPopupWindow:Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-static {p1}, Lcom/xiaomi/mirror/MirrorManagerImpl;->getOnMirrorMenuQueryListener(Landroid/view/View;)Lcom/xiaomi/mirror/OnMirrorMenuQueryListener;

    move-result-object p2

    if-eqz p2, :cond_91

    invoke-interface {p2, p1, v1}, Lcom/xiaomi/mirror/OnMirrorMenuQueryListener;->onMirrorMenuShow(Landroid/view/View;Z)V

    :cond_91
    :goto_91
    return-void
.end method


# virtual methods
.method public isCurrentClickFromMirror()Z
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManagerImpl;->mMirrorManager:Lcom/xiaomi/mirror/IMirrorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/xiaomi/mirror/IMirrorManager;->isCurrentClickFromMirror()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    return v0

    :catchall_b
    move-exception v0

    const-string v2, "MirrorManagerImpl"

    const-string v3, "isCurrentClickFromMirror"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isEventFromMirror(Landroid/view/InputEvent;)Z
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManagerImpl;->mMirrorManager:Lcom/xiaomi/mirror/IMirrorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    invoke-interface {v0, p1}, Lcom/xiaomi/mirror/IMirrorManager;->isEventFromMirror(Landroid/view/InputEvent;)Z

    move-result p1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    return p1

    :catchall_b
    move-exception p1

    const-string v0, "MirrorManagerImpl"

    const-string v2, "isEventFromMirror"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isSupport()Z
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManagerImpl;->mMirrorManager:Lcom/xiaomi/mirror/IMirrorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/xiaomi/mirror/IMirrorManager;->isModelSupport()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    return v0

    :catchall_b
    move-exception v0

    const-string v2, "MirrorManagerImpl"

    const-string v3, "isSupport"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isWorking()Z
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManagerImpl;->mMirrorManager:Lcom/xiaomi/mirror/IMirrorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/xiaomi/mirror/IMirrorManager;->isWorking()Z

    move-result v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    return v0

    :catchall_b
    move-exception v0

    const-string v2, "MirrorManagerImpl"

    const-string v3, "isWorking"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public notifyStartActivity(Landroid/content/Intent;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManagerImpl;->mMirrorManager:Lcom/xiaomi/mirror/IMirrorManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Lcom/xiaomi/mirror/IMirrorManager;->notifyStartActivity(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    goto :goto_11

    :catchall_9
    move-exception p1

    const-string v0, "MirrorManagerImpl"

    const-string v1, "notifyStartActivity"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public notifyStartActivityFromRecents(ILandroid/os/Bundle;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/mirror/MirrorManagerImpl;->mMirrorManager:Lcom/xiaomi/mirror/IMirrorManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-interface {v0, p1, p2}, Lcom/xiaomi/mirror/IMirrorManager;->notifyStartActivityFromRecents(ILandroid/os/Bundle;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_9

    goto :goto_11

    :catchall_9
    move-exception p1

    const-string p2, "MirrorManagerImpl"

    const-string v0, "notifyStartActivityFromRecents"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public setOnMirrorMenuQueryListener(Landroid/view/View;Lcom/xiaomi/mirror/OnMirrorMenuQueryListener;)V
    .registers 7

    .line 0
    const-string v0, "MirrorManagerImpl"

    if-nez p1, :cond_a

    const-string p1, "setOnMirrorMenuQueryListener view is null"

    :goto_6
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    if-eqz p2, :cond_2e

    sget v1, Lcom/xiaomi/mirror/opensdk/R$id;->tag_mirror_menu_query_listener:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2a

    instance-of v3, v2, Lcom/xiaomi/mirror/OnMirrorMenuQueryListener;

    if-nez v3, :cond_2a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "the tag is busy."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_2a
    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_4c

    :cond_2e
    sget p2, Lcom/xiaomi/mirror/opensdk/R$id;->tag_mirror_menu_query_listener:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_48

    instance-of v2, v1, Lcom/xiaomi/mirror/OnMirrorMenuQueryListener;

    if-nez v2, :cond_48

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[remove]the tag is busy."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_48
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_4c
    return-void
.end method

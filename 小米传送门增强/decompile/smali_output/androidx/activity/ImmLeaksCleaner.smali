.class final Landroidx/activity/ImmLeaksCleaner;
.super Ljava/lang/Object;
.source "ImmLeaksCleaner.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field private static sHField:Ljava/lang/reflect/Field;

.field private static sNextServedViewField:Ljava/lang/reflect/Field;

.field private static sReflectedFieldsInitialized:I

.field private static sServedViewField:Ljava/lang/reflect/Field;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method private static initializeReflectiveFields()V
    .registers 3

    .line 101
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    :try_start_3
    sput v1, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    .line 102
    const-string v1, "mServedView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/activity/ImmLeaksCleaner;->sServedViewField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 104
    const-string v1, "mNextServedView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroidx/activity/ImmLeaksCleaner;->sNextServedViewField:Ljava/lang/reflect/Field;

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 106
    const-string v1, "mH"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/activity/ImmLeaksCleaner;->sHField:Ljava/lang/reflect/Field;

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 108
    sput v2, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I
    :try_end_29
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_29} :catch_29

    :catch_29
    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 5

    .line 51
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-eq p2, p1, :cond_5

    return-void

    .line 54
    :cond_5
    sget p1, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    if-nez p1, :cond_c

    .line 55
    invoke-static {}, Landroidx/activity/ImmLeaksCleaner;->initializeReflectiveFields()V

    .line 57
    :cond_c
    sget p1, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4e

    .line 58
    iget-object p1, p0, Landroidx/activity/ImmLeaksCleaner;->mActivity:Landroid/app/Activity;

    const-string p2, "input_method"

    .line 59
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 62
    :try_start_1b
    sget-object p2, Landroidx/activity/ImmLeaksCleaner;->sHField:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_21} :catch_4e

    if-nez p2, :cond_24

    return-void

    .line 69
    :cond_24
    monitor-enter p2

    .line 72
    :try_start_25
    sget-object v0, Landroidx/activity/ImmLeaksCleaner;->sServedViewField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_2d} :catch_4a
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_2d} :catch_48
    .catchall {:try_start_25 .. :try_end_2d} :catchall_31

    if-nez v0, :cond_33

    .line 79
    :try_start_2f
    monitor-exit p2

    return-void

    :catchall_31
    move-exception p1

    goto :goto_4c

    .line 81
    :cond_33
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 82
    monitor-exit p2
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_31

    return-void

    .line 87
    :cond_3b
    :try_start_3b
    sget-object v0, Landroidx/activity/ImmLeaksCleaner;->sNextServedViewField:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_41} :catch_46
    .catchall {:try_start_3b .. :try_end_41} :catchall_31

    .line 91
    :try_start_41
    monitor-exit p2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_31

    .line 94
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    goto :goto_4e

    .line 89
    :catch_46
    :try_start_46
    monitor-exit p2

    return-void

    .line 76
    :catch_48
    monitor-exit p2

    return-void

    .line 74
    :catch_4a
    monitor-exit p2

    return-void

    .line 91
    :goto_4c
    monitor-exit p2
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_31

    throw p1

    :catch_4e
    :cond_4e
    :goto_4e
    return-void
.end method

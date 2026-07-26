.class public final Landroidx/appcompat/widget/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# static fields
.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;


# instance fields
.field private mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/graphics/PorterDuff$Mode;
    .registers 1

    .line 51
    sget-object v0, Landroidx/appcompat/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public static declared-synchronized get()Landroidx/appcompat/widget/AppCompatDrawableManager;
    .registers 2

    const-class v0, Landroidx/appcompat/widget/AppCompatDrawableManager;

    monitor-enter v0

    .line 466
    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;

    if-nez v1, :cond_d

    .line 467
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->preload()V

    goto :goto_d

    :catchall_b
    move-exception v1

    goto :goto_11

    .line 469
    :cond_d
    :goto_d
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_b

    monitor-exit v0

    return-object v1

    :goto_11
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_b

    throw v1
.end method

.method public static declared-synchronized getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 3

    const-class v0, Landroidx/appcompat/widget/AppCompatDrawableManager;

    monitor-enter v0

    .line 507
    :try_start_3
    invoke-static {p0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p0
.end method

.method public static declared-synchronized preload()V
    .registers 3

    const-class v0, Landroidx/appcompat/widget/AppCompatDrawableManager;

    monitor-enter v0

    .line 59
    :try_start_3
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;

    if-nez v1, :cond_23

    .line 60
    new-instance v1, Landroidx/appcompat/widget/AppCompatDrawableManager;

    invoke-direct {v1}, Landroidx/appcompat/widget/AppCompatDrawableManager;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;

    .line 61
    invoke-static {}, Landroidx/appcompat/widget/ResourceManagerInternal;->get()Landroidx/appcompat/widget/ResourceManagerInternal;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 62
    sget-object v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->INSTANCE:Landroidx/appcompat/widget/AppCompatDrawableManager;

    iget-object v1, v1, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    new-instance v2, Landroidx/appcompat/widget/AppCompatDrawableManager$1;

    invoke-direct {v2}, Landroidx/appcompat/widget/AppCompatDrawableManager$1;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ResourceManagerInternal;->setHooks(Landroidx/appcompat/widget/ResourceManagerInternal$ResourceManagerHooks;)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_21

    goto :goto_23

    :catchall_21
    move-exception v1

    goto :goto_25

    .line 460
    :cond_23
    :goto_23
    monitor-exit v0

    return-void

    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_21

    throw v1
.end method

.method static tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V
    .registers 3

    .line 502
    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    monitor-enter p0

    .line 475
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method declared-synchronized getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .registers 5

    monitor-enter p0

    .line 480
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/ResourceManagerInternal;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method declared-synchronized getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 4

    monitor-enter p0

    .line 498
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized onConfigurationChanged(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    .line 484
    :try_start_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatDrawableManager;->mResourceManager:Landroidx/appcompat/widget/ResourceManagerInternal;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ResourceManagerInternal;->onConfigurationChanged(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 485
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

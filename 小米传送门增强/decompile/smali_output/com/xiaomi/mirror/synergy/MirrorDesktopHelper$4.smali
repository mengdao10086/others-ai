.class Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper$4;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->registerMirrorDesktopCallback(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/MirrorDesktopCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;Landroid/os/Handler;)V
    .registers 3

    .line 0
    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper$4;->this$0:Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 0
    iget-object p1, p0, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper$4;->this$0:Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;

    const/16 v0, 0x38a

    # invokes: Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->sendMessageToCallback(I)V
    invoke-static {p1, v0}, Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;->access$000(Lcom/xiaomi/mirror/synergy/MirrorDesktopHelper;I)V

    return-void
.end method

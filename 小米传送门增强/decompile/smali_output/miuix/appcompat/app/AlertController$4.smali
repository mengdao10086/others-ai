.class Lmiuix/appcompat/app/AlertController$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/AlertController;->installContent(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/AlertController;)V
    .registers 2

    .line 546
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$4;->this$0:Lmiuix/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;IIII)V
    .registers 6

    .line 549
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController$4;->this$0:Lmiuix/appcompat/app/AlertController;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p3}, Lmiuix/appcompat/app/AlertController;->onConfigurationChanged(Landroid/content/res/Configuration;ZZ)V

    return-void
.end method

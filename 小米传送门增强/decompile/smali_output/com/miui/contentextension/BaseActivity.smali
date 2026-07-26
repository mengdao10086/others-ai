.class public Lcom/miui/contentextension/BaseActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field private mAdapterGestureLineEnable:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/miui/contentextension/BaseActivity;->mAdapterGestureLineEnable:Z

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 33
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 35
    iget-boolean p1, p0, Lcom/miui/contentextension/BaseActivity;->mAdapterGestureLineEnable:Z

    if-eqz p1, :cond_a

    .line 36
    invoke-static {p0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;)V

    :cond_a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 23
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 25
    iget-boolean p1, p0, Lcom/miui/contentextension/BaseActivity;->mAdapterGestureLineEnable:Z

    if-eqz p1, :cond_f

    .line 26
    invoke-static {p0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;)V

    .line 28
    :cond_f
    invoke-static {p0}, Lcom/miui/contentextension/utils/NotchUtils;->layoutNotchArea(Landroid/app/Activity;)V

    return-void
.end method

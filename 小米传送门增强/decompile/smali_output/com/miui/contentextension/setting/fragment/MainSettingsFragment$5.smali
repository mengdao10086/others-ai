.class Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$5;
.super Ljava/lang/Object;
.source "MainSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->showDoubleTapWithXiaoAiDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$5;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 289
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$5;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-static {p1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->-$$Nest$fgetmEnableTaplusPreference(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 290
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$5;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-static {p1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->-$$Nest$fgetmContext(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/contentextension/utils/TaplusSettingUtils;->isTaplusEnable(Landroid/content/Context;)Z

    move-result p1

    .line 291
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$5;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-static {v0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->-$$Nest$fgetmEnableTaplusPreference(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 293
    :cond_1b
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$5;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-static {p1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->-$$Nest$fgetmOperationModePreference(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)Lmiuix/preference/DropDownPreference;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 294
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$5;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-static {p1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->-$$Nest$fgetmOperationModePreference(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)Lmiuix/preference/DropDownPreference;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$5;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-static {v0}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->-$$Nest$fgetmContext(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->getCurrentPressItem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_36
    return-void
.end method

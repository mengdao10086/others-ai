.class Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$3;
.super Ljava/lang/Object;
.source "MainSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->handleOperationMode(Ljava/lang/String;)V
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

    .line 239
    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$3;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 242
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$3;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-static {p1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->-$$Nest$fgetmOperationModePreference(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)Lmiuix/preference/DropDownPreference;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$3;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100249

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

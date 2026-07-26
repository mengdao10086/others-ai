.class Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$1;
.super Ljava/lang/Object;
.source "MainSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->handleTaplusEnable()V
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

    .line 207
    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$1;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 210
    iget-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$1;->this$0:Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;

    invoke-static {p1}, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;->-$$Nest$fgetmEnableTaplusPreference(Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

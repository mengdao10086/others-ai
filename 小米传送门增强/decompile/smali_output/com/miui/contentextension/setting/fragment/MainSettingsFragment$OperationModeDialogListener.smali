.class Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$OperationModeDialogListener;
.super Ljava/lang/Object;
.source "MainSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/setting/fragment/MainSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OperationModeDialogListener"
.end annotation


# instance fields
.field private choiceItems:[Ljava/lang/CharSequence;

.field private context:Landroid/content/Context;

.field private guidePreference:Lcom/miui/contentextension/setting/preference/GuidePreference;

.field private textPreference:Lmiuix/preference/TextPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;Lcom/miui/contentextension/setting/preference/GuidePreference;Lmiuix/preference/TextPreference;)V
    .registers 5

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iput-object p1, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$OperationModeDialogListener;->context:Landroid/content/Context;

    .line 538
    iput-object p2, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$OperationModeDialogListener;->choiceItems:[Ljava/lang/CharSequence;

    .line 539
    iput-object p3, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$OperationModeDialogListener;->guidePreference:Lcom/miui/contentextension/setting/preference/GuidePreference;

    .line 540
    iput-object p4, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$OperationModeDialogListener;->textPreference:Lmiuix/preference/TextPreference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 545
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$OperationModeDialogListener;->choiceItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    array-length v1, v0

    if-gt p2, v1, :cond_1b

    .line 546
    aget-object p2, v0, p2

    check-cast p2, Ljava/lang/String;

    .line 547
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$OperationModeDialogListener;->context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/miui/contentextension/utils/ContentCatcherUtil;->setCurrentPressItem(Landroid/content/Context;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$OperationModeDialogListener;->guidePreference:Lcom/miui/contentextension/setting/preference/GuidePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/miui/contentextension/setting/preference/GuidePreference;->switchAnimation(Ljava/lang/String;Z)V

    .line 549
    iget-object v0, p0, Lcom/miui/contentextension/setting/fragment/MainSettingsFragment$OperationModeDialogListener;->textPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    .line 551
    :cond_1b
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.class Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreferenceDialogFragmentCompat.java"

# interfaces
.implements Lmiuix/preference/IPreferenceDialogFragment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;


# direct methods
.method constructor <init>(Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needInputMethod()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindDialogView(Landroid/view/View;)V
    .registers 3

    .line 38
    iget-object v0, p0, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;

    # invokes: Landroidx/preference/PreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V
    invoke-static {v0, p1}, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;->access$100(Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;Landroid/view/View;)V

    return-void
.end method

.method public onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    .registers 3

    .line 28
    iget-object v0, p0, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;

    # invokes: Landroidx/preference/PreferenceDialogFragmentCompat;->onCreateDialogView(Landroid/content/Context;)Landroid/view/View;
    invoke-static {v0, p1}, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;->access$000(Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .registers 3

    .line 33
    iget-object v0, p0, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat$1;->this$0:Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;

    invoke-virtual {v0, p1}, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V

    return-void
.end method

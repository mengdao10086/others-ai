.class Lmiuix/preference/DropDownPreference$4;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/DropDownPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/preference/DropDownPreference;

.field final synthetic val$view:Landroidx/preference/PreferenceViewHolder;


# direct methods
.method constructor <init>(Lmiuix/preference/DropDownPreference;Landroidx/preference/PreferenceViewHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 358
    iput-object p1, p0, Lmiuix/preference/DropDownPreference$4;->this$0:Lmiuix/preference/DropDownPreference;

    iput-object p2, p0, Lmiuix/preference/DropDownPreference$4;->val$view:Landroidx/preference/PreferenceViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpinnerDismiss()V
    .registers 3

    .line 361
    iget-object v0, p0, Lmiuix/preference/DropDownPreference$4;->val$view:Landroidx/preference/PreferenceViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.class Lmiuix/preference/DropDownPreference$3;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 351
    iput-object p1, p0, Lmiuix/preference/DropDownPreference$3;->this$0:Lmiuix/preference/DropDownPreference;

    iput-object p2, p0, Lmiuix/preference/DropDownPreference$3;->val$view:Landroidx/preference/PreferenceViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 354
    iget-object v0, p0, Lmiuix/preference/DropDownPreference$3;->this$0:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lmiuix/preference/DropDownPreference$3;->val$view:Landroidx/preference/PreferenceViewHolder;

    # invokes: Lmiuix/preference/DropDownPreference;->showSelectedItemAtLargeFont(Landroidx/preference/PreferenceViewHolder;)V
    invoke-static {v0, v1}, Lmiuix/preference/DropDownPreference;->access$400(Lmiuix/preference/DropDownPreference;Landroidx/preference/PreferenceViewHolder;)V

    .line 355
    iget-object v0, p0, Lmiuix/preference/DropDownPreference$3;->this$0:Lmiuix/preference/DropDownPreference;

    # getter for: Lmiuix/preference/DropDownPreference;->mSpinner:Lmiuix/appcompat/widget/Spinner;
    invoke-static {v0}, Lmiuix/preference/DropDownPreference;->access$600(Lmiuix/preference/DropDownPreference;)Lmiuix/appcompat/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lmiuix/preference/DropDownPreference$3;->this$0:Lmiuix/preference/DropDownPreference;

    # getter for: Lmiuix/preference/DropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-static {v1}, Lmiuix/preference/DropDownPreference;->access$500(Lmiuix/preference/DropDownPreference;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

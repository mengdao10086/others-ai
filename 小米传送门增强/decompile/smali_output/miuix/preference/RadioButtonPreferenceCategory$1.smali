.class Lmiuix/preference/RadioButtonPreferenceCategory$1;
.super Ljava/lang/Object;
.source "RadioButtonPreferenceCategory.java"

# interfaces
.implements Lmiuix/preference/OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/RadioButtonPreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/preference/RadioButtonPreferenceCategory;


# direct methods
.method constructor <init>(Lmiuix/preference/RadioButtonPreferenceCategory;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V
    .registers 3

    .line 44
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    # invokes: Lmiuix/preference/RadioButtonPreferenceCategory;->parse(Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
    invoke-static {v0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->access$100(Lmiuix/preference/RadioButtonPreferenceCategory;Landroidx/preference/Preference;)Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    # invokes: Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPreference(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    invoke-static {v0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->access$200(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    .line 46
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    # invokes: Lmiuix/preference/RadioButtonPreferenceCategory;->updateCheckedPosition(Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V
    invoke-static {v0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory;->access$300(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;)V

    return-void
.end method

.method public onPreferenceChangeInternal(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    .line 30
    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    .line 31
    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    .line 32
    iget-object v1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 35
    iget-object v2, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    # invokes: Lmiuix/preference/RadioButtonPreferenceCategory;->checkPreferenceByInternal(Landroidx/preference/Preference;Ljava/lang/Object;)V
    invoke-static {v2, p1, p2}, Lmiuix/preference/RadioButtonPreferenceCategory;->access$000(Lmiuix/preference/RadioButtonPreferenceCategory;Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$1;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-interface {v1, p1}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)Z

    :cond_19
    xor-int/lit8 p1, v0, 0x1

    return p1
.end method

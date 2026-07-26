.class Lmiuix/appcompat/widget/Spinner$DialogPopup;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Lmiuix/appcompat/widget/Spinner$SpinnerPopup;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field mPopup:Lmiuix/appcompat/app/AlertDialog;

.field private mPopupItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method private constructor <init>(Lmiuix/appcompat/widget/Spinner;)V
    .registers 2

    .line 1042
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/appcompat/widget/Spinner;Lmiuix/appcompat/widget/Spinner$1;)V
    .registers 3

    .line 1042
    invoke-direct {p0, p1}, Lmiuix/appcompat/widget/Spinner$DialogPopup;-><init>(Lmiuix/appcompat/widget/Spinner;)V

    return-void
.end method

.method static synthetic access$300(Lmiuix/appcompat/widget/Spinner$DialogPopup;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 2

    .line 1042
    invoke-direct {p0, p1}, Lmiuix/appcompat/widget/Spinner$DialogPopup;->setOnPopupItemClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private setOnPopupItemClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 2

    .line 1168
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopupItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 1050
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopup:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_a

    .line 1051
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 1052
    iput-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopup:Lmiuix/appcompat/app/AlertDialog;

    :cond_a
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .registers 2

    .line 1073
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOffset()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalOffset()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .line 1058
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopup:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 1108
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0, p2}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    .line 1109
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    invoke-static {v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 1110
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1111
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p2, v1, v2}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 1113
    :cond_20
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopupItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_27

    .line 1114
    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1116
    :cond_27
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner$DialogPopup;->dismiss()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2

    .line 1063
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 1121
    const-string p1, "Spinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDropDownGravity(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .registers 3

    .line 1131
    const-string p1, "Spinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .registers 3

    .line 1151
    const-string p1, "Spinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 1068
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 3

    .line 1126
    const-string p1, "Spinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public show(II)V
    .registers 6

    .line 1078
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    return-void

    .line 1081
    :cond_5
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v1}, Lmiuix/appcompat/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1082
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v1, :cond_17

    .line 1083
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 1085
    :cond_17
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 1086
    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 1085
    invoke-virtual {v0, v1, v2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/widget/Spinner$DialogPopup$1;

    invoke-direct {v1, p0}, Lmiuix/appcompat/widget/Spinner$DialogPopup$1;-><init>(Lmiuix/appcompat/widget/Spinner$DialogPopup;)V

    .line 1087
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1093
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopup:Lmiuix/appcompat/app/AlertDialog;

    .line 1094
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1095
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1096
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1097
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner$DialogPopup;->mPopup:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public show(IIFF)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1103
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner$DialogPopup;->show(II)V

    return-void
.end method

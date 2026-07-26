.class public Lcom/miui/contentextension/clipboard/EditActivity;
.super Lcom/miui/contentextension/BaseActivity;
.source "EditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mCancel:Landroid/widget/ImageView;

.field private mDarkModeEnable:I

.field private mEditText:Landroid/widget/EditText;

.field protected mEndView:Landroid/widget/ImageView;

.field private mIsClickYes:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/miui/contentextension/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mIsClickYes:Z

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mDarkModeEnable:I

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mEditText:Landroid/widget/EditText;

    return-void
.end method

.method public static getDayNightDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 109
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p2, :cond_c

    if-eqz p0, :cond_c

    const/4 p1, -0x1

    .line 111
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_c
    return-object p0
.end method

.method private initView()V
    .registers 4

    const v0, 0x7f0a00b4

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mEditText:Landroid/widget/EditText;

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "clipboard_data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private setActionBar()V
    .registers 6

    .line 57
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_a1

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "J18 adapter title -- is big Screen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/contentextension/clipboard/EditActivity;->isSplitModeEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "-is split screen\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/miui/contentextension/utils/MiuiPadUtils;->isTabletSpitModel(Landroid/app/Activity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Taplus.EditActivity"

    invoke-static {v2, v1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    .line 63
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 65
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f1000f7

    .line 66
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 68
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mEndView:Landroid/widget/ImageView;

    const v2, 0x104000a

    .line 69
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 71
    iget-object v2, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mEndView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iget-object v2, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mEndView:Landroid/widget/ImageView;

    const v3, 0x7f080187

    invoke-virtual {p0}, Lcom/miui/contentextension/clipboard/EditActivity;->isDarkModeEnable()Z

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/miui/contentextension/clipboard/EditActivity;->getDayNightDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v2, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    .line 74
    iget-object v2, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mEndView:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mCancel:Landroid/widget/ImageView;

    const/high16 v3, 0x1040000

    .line 77
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v2, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v1, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mCancel:Landroid/widget/ImageView;

    const v2, 0x7f080185

    invoke-virtual {p0}, Lcom/miui/contentextension/clipboard/EditActivity;->isDarkModeEnable()Z

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/miui/contentextension/clipboard/EditActivity;->getDayNightDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v1, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a1
    return-void
.end method

.method private writeClipboard(Ljava/lang/CharSequence;)V
    .registers 8

    .line 144
    const-string v0, "Taplus.EditActivity"

    const-string v1, "clipboard"

    :try_start_4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    if-nez v2, :cond_14

    .line 146
    const-string p1, "writeClipboard: ClipboardManager is null"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_12
    move-exception p1

    goto :goto_3b

    .line 149
    :cond_14
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 150
    new-instance p1, Landroid/content/ClipDescription;

    const-string v4, "contentextension"

    const-string v5, "text/plain"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, v4, v5}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 151
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    const/4 v5, 0x1

    .line 152
    invoke-virtual {v4, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    invoke-virtual {p1, v4}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    .line 154
    new-instance v1, Landroid/content/ClipData;

    invoke-direct {v1, p1, v3}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 155
    invoke-virtual {v2, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3a} :catch_12

    goto :goto_53

    .line 157
    :goto_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeClipboard\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_53
    return-void
.end method


# virtual methods
.method public isDarkModeEnable()Z
    .registers 5

    .line 99
    iget v0, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mDarkModeEnable:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1d

    .line 100
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz v0, :cond_1d

    .line 102
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    move v0, v3

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    iput v0, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mDarkModeEnable:I

    .line 105
    :cond_1d
    iget v0, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mDarkModeEnable:I

    if-ne v0, v3, :cond_22

    move v2, v3

    :cond_22
    return v2
.end method

.method protected isSplitModeEnabled()Z
    .registers 2

    .line 90
    invoke-static {p0}, Lcom/miui/contentextension/utils/FolderScreenUtils;->isSplitModeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 118
    iget-object v0, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mEndView:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_28

    .line 119
    iget-object p1, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result p1

    if-nez p1, :cond_17

    goto :goto_21

    :cond_17
    const p1, 0x7f1000a1

    .line 124
    invoke-static {p0, p1}, Lcom/miui/contentextension/utils/ToastUtils;->showToast(Landroid/content/Context;I)V

    const/4 p1, 0x1

    .line 125
    iput-boolean p1, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mIsClickYes:Z

    goto :goto_2f

    :cond_21
    :goto_21
    const p1, 0x7f1000f9

    .line 121
    invoke-static {p0, p1}, Lcom/miui/contentextension/utils/ToastUtils;->showToast(Landroid/content/Context;I)V

    return-void

    .line 126
    :cond_28
    iget-object v0, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mCancel:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2f

    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mIsClickYes:Z

    .line 129
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 44
    invoke-super {p0, p1}, Lcom/miui/contentextension/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-direct {p0}, Lcom/miui/contentextension/clipboard/EditActivity;->setActionBar()V

    const p1, 0x7f0d0029

    .line 46
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 47
    invoke-direct {p0}, Lcom/miui/contentextension/clipboard/EditActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 134
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy clickYes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mIsClickYes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.EditActivity"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-boolean v0, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mIsClickYes:Z

    if-eqz v0, :cond_28

    .line 137
    iget-object v0, p0, Lcom/miui/contentextension/clipboard/EditActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 138
    invoke-direct {p0, v0}, Lcom/miui/contentextension/clipboard/EditActivity;->writeClipboard(Ljava/lang/CharSequence;)V

    :cond_28
    return-void
.end method

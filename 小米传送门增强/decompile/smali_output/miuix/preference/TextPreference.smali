.class public Lmiuix/preference/TextPreference;
.super Lmiuix/preference/BasePreference;
.source "TextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/TextPreference$TextProvider;
    }
.end annotation


# instance fields
.field private mText:Ljava/lang/CharSequence;

.field private mTextProvider:Lmiuix/preference/TextPreference$TextProvider;

.field private mTextRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 106
    sget v0, Lmiuix/preference/R$attr;->textPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 93
    sget v0, Lmiuix/preference/R$style;->Miuix_Preference_TextPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/preference/BasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 40
    sget-object v0, Lmiuix/preference/R$styleable;->TextPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 42
    sget p3, Lmiuix/preference/R$styleable;->TextPreference_android_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 43
    sget p4, Lmiuix/preference/R$styleable;->TextPreference_textProvider:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 44
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_25

    .line 47
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    .line 49
    :cond_25
    invoke-direct {p0, p1, p4}, Lmiuix/preference/TextPreference;->createTextProvider(Landroid/content/Context;Ljava/lang/String;)Lmiuix/preference/TextPreference$TextProvider;

    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lmiuix/preference/TextPreference;->setTextProvider(Lmiuix/preference/TextPreference$TextProvider;)V

    return-void
.end method

.method private changeTextAlignmentAndMaxWidth(Landroid/widget/TextView;)V
    .registers 7

    .line 198
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_f

    move v0, v3

    goto :goto_10

    :cond_f
    move v0, v2

    .line 201
    :goto_10
    invoke-virtual {p0}, Landroidx/preference/Preference;->getLayoutResource()I

    move-result v1

    sget v4, Lmiuix/preference/R$layout;->miuix_preference_flexible_text:I

    if-ne v1, v4, :cond_21

    .line 202
    invoke-virtual {p0}, Landroidx/preference/Preference;->getWidgetLayoutResource()I

    move-result v1

    sget v4, Lmiuix/preference/R$layout;->miuix_preference_widget_text:I

    if-ne v1, v4, :cond_21

    move v2, v3

    :cond_21
    if-eqz v0, :cond_27

    const v1, 0x7fffffff

    goto :goto_35

    .line 204
    :cond_27
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lmiuix/preference/R$dimen;->miuix_preference_widget_layout_max_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_35
    if-eqz v0, :cond_39

    const/4 v0, 0x5

    goto :goto_3a

    :cond_39
    const/4 v0, 0x6

    :goto_3a
    if-eqz v2, :cond_42

    .line 207
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 208
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_42
    return-void
.end method

.method private createTextProvider(Landroid/content/Context;Ljava/lang/String;)Lmiuix/preference/TextPreference$TextProvider;
    .registers 6

    .line 54
    const-string v0, "Could not instantiate the TextProvider: "

    .line 55
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a1

    .line 58
    :try_start_9
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-class v1, Lmiuix/preference/TextPreference$TextProvider;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 v1, 0x1

    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 63
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lmiuix/preference/TextPreference$TextProvider;
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_26} :catch_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_26} :catch_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_26} :catch_2c
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_26} :catch_2a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_26} :catch_28

    goto/16 :goto_a1

    :catch_28
    move-exception p1

    goto :goto_32

    :catch_2a
    move-exception p1

    goto :goto_47

    :catch_2c
    move-exception p1

    goto :goto_5c

    :catch_2e
    move-exception p1

    goto :goto_73

    :catch_30
    move-exception p1

    goto :goto_8a

    .line 73
    :goto_32
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 71
    :goto_47
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 69
    :goto_5c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t access non-public constructor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 67
    :goto_73
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating TextProvider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 65
    :goto_8a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_a1
    :goto_a1
    return-object v2
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .line 160
    invoke-virtual {p0}, Lmiuix/preference/TextPreference;->getTextProvider()Lmiuix/preference/TextPreference$TextProvider;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 161
    invoke-virtual {p0}, Lmiuix/preference/TextPreference;->getTextProvider()Lmiuix/preference/TextPreference$TextProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Lmiuix/preference/TextPreference$TextProvider;->provideText(Lmiuix/preference/TextPreference;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 163
    :cond_f
    iget-object v0, p0, Lmiuix/preference/TextPreference;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextProvider()Lmiuix/preference/TextPreference$TextProvider;
    .registers 2

    .line 125
    iget-object v0, p0, Lmiuix/preference/TextPreference;->mTextProvider:Lmiuix/preference/TextPreference$TextProvider;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 6

    .line 168
    invoke-super {p0, p1}, Lmiuix/preference/BasePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 170
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 171
    sget v0, Lmiuix/preference/R$id;->text_right:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_49

    .line 174
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    .line 175
    invoke-virtual {p0}, Lmiuix/preference/TextPreference;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 176
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 177
    invoke-direct {p0, v0}, Lmiuix/preference/TextPreference;->changeTextAlignmentAndMaxWidth(Landroid/widget/TextView;)V

    .line 178
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 179
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2d

    :cond_28
    const/16 v2, 0x8

    .line 181
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    :goto_2d
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v1, v0, :cond_49

    .line 188
    instance-of v0, p1, Lmiuix/flexible/view/HyperCellLayout;

    if-eqz v0, :cond_49

    .line 189
    move-object v0, p1

    check-cast v0, Lmiuix/flexible/view/HyperCellLayout;

    invoke-virtual {v0}, Lmiuix/flexible/view/HyperCellLayout;->getTemplate()Lmiuix/flexible/template/IHyperCellTemplate;

    move-result-object v0

    .line 190
    instance-of v1, v0, Lmiuix/preference/flexible/AbstractBaseTemplate;

    if-eqz v1, :cond_49

    .line 191
    check-cast v0, Lmiuix/preference/flexible/AbstractBaseTemplate;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Lmiuix/preference/flexible/AbstractBaseTemplate;->refreshLayout(Landroid/view/ViewGroup;)V

    :cond_49
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .line 134
    invoke-virtual {p0}, Lmiuix/preference/TextPreference;->getTextProvider()Lmiuix/preference/TextPreference$TextProvider;

    move-result-object v0

    if-nez v0, :cond_17

    .line 137
    iget-object v0, p0, Lmiuix/preference/TextPreference;->mText:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x0

    .line 138
    iput v0, p0, Lmiuix/preference/TextPreference;->mTextRes:I

    .line 139
    iput-object p1, p0, Lmiuix/preference/TextPreference;->mText:Ljava/lang/CharSequence;

    .line 140
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_16
    return-void

    .line 135
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Preference already has a TextProvider set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setTextProvider(Lmiuix/preference/TextPreference$TextProvider;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lmiuix/preference/TextPreference;->mTextProvider:Lmiuix/preference/TextPreference$TextProvider;

    .line 120
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

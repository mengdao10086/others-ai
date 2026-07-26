.class public Lmiuix/internal/widget/ArrowActionSheetPanel;
.super Landroid/widget/FrameLayout;
.source "ArrowActionSheetPanel.java"


# instance fields
.field private mArrowIconLongSide:I

.field private mArrowIconShortSide:I

.field private mArrowLinkOffset:I

.field private mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;

.field private mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

.field private mContent:Landroid/view/ViewGroup;

.field private mContentMaxHeight:I

.field private mContentRadius:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lmiuix/internal/widget/ArrowActionSheetPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_sheet_content_panel_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContentRadius:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_sheet_arrow_icon_link_offset:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_sheet_arrow_icon_long_side:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowIconLongSide:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_sheet_arrow_icon_short_side:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowIconShortSide:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_action_sheet_arrow_content_panel_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContentMaxHeight:I

    return-void
.end method

.method private getArrowPosition(Lmiuix/internal/widget/ActionSheet$ArrowMode;)Landroid/graphics/Point;
    .registers 5

    .line 179
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 180
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 181
    sget-object v2, Lmiuix/internal/widget/ArrowActionSheetPanel$1;->$SwitchMap$miuix$internal$widget$ActionSheet$ArrowMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_1e0

    goto/16 :goto_1df

    :pswitch_17
    if-eqz v1, :cond_2f

    .line 260
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 261
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iget v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1df

    .line 263
    :cond_2f
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 264
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iget v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1df

    :pswitch_4b
    if-eqz v1, :cond_55

    .line 250
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 251
    iget p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1df

    .line 253
    :cond_55
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 254
    iget p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1df

    :pswitch_63
    if-eqz v1, :cond_7c

    .line 240
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 241
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1df

    .line 243
    :cond_7c
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 244
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1df

    :pswitch_99
    if-eqz v1, :cond_b7

    .line 230
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 231
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iget v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1df

    .line 233
    :cond_b7
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 234
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iget v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1df

    :pswitch_cd
    if-eqz v1, :cond_dd

    .line 220
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 221
    iget p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1df

    .line 223
    :cond_dd
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 224
    iget p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1df

    :pswitch_e5
    if-eqz v1, :cond_104

    .line 210
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 211
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1df

    .line 213
    :cond_104
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 214
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1df

    :pswitch_11b
    if-eqz v1, :cond_12b

    .line 285
    iget p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 286
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1df

    .line 288
    :cond_12b
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 289
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1df

    :pswitch_147
    if-eqz v1, :cond_165

    .line 270
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 271
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_1df

    .line 273
    :cond_165
    iget p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 274
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1df

    .line 279
    :pswitch_172
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 280
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto :goto_1df

    :pswitch_18e
    if-eqz v1, :cond_197

    .line 200
    iget p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 201
    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_1df

    .line 203
    :cond_197
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 204
    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_1df

    :pswitch_1ac
    if-eqz v1, :cond_1c3

    .line 185
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p1, v1

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 186
    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_1df

    .line 188
    :cond_1c3
    iget p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 189
    iput v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_1df

    .line 194
    :pswitch_1ca
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 195
    iput v2, v0, Landroid/graphics/Point;->y:I

    :goto_1df
    return-object v0

    :pswitch_data_1e0
    .packed-switch 0x1
        :pswitch_1ca
        :pswitch_1ac
        :pswitch_18e
        :pswitch_172
        :pswitch_147
        :pswitch_11b
        :pswitch_e5
        :pswitch_cd
        :pswitch_99
        :pswitch_63
        :pswitch_4b
        :pswitch_17
    .end packed-switch
.end method

.method private getContentPanelPosition(Lmiuix/internal/widget/ActionSheet$ArrowMode;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 6

    .line 304
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 305
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 306
    sget-object v2, Lmiuix/internal/widget/ArrowActionSheetPanel$1;->$SwitchMap$miuix$internal$widget$ActionSheet$ArrowMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_29c

    goto/16 :goto_29b

    :pswitch_16
    if-eqz v1, :cond_3a

    .line 376
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 377
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p2, v1

    iget v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p2, v1

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    .line 379
    :cond_3a
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 380
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p2, v1

    iget v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p2, v1

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    :pswitch_5c
    if-eqz v1, :cond_72

    .line 367
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 368
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    .line 370
    :cond_72
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 371
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    :pswitch_86
    if-eqz v1, :cond_a9

    .line 358
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 359
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    .line 361
    :cond_a9
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 362
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    :pswitch_ca
    if-eqz v1, :cond_ee

    .line 349
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 350
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p2, v1

    iget v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p2, v1

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    .line 352
    :cond_ee
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 353
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p2, v1

    iget v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p2, v1

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    :pswitch_110
    if-eqz v1, :cond_126

    .line 340
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 341
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    .line 343
    :cond_126
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 344
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    :pswitch_13a
    if-eqz v1, :cond_15d

    .line 331
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 332
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    .line 334
    :cond_15d
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 335
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    :pswitch_17e
    if-eqz v1, :cond_194

    .line 398
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 399
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    .line 401
    :cond_194
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr v1, v2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 402
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    :pswitch_1b6
    if-eqz v1, :cond_1da

    .line 385
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr v1, v2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 386
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    .line 388
    :cond_1da
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 389
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    .line 393
    :pswitch_1ee
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 394
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    :pswitch_20f
    if-eqz v1, :cond_225

    .line 322
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 323
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_29b

    .line 325
    :cond_225
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr v1, v2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 326
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto :goto_29b

    :pswitch_246
    if-eqz v1, :cond_269

    .line 309
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr v1, v2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 310
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto :goto_29b

    .line 312
    :cond_269
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowLinkOffset:I

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 313
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    goto :goto_29b

    .line 317
    :pswitch_27c
    iget p1, p2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 318
    iget p1, p2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Point;->y:I

    :goto_29b
    return-object v0

    :pswitch_data_29c
    .packed-switch 0x1
        :pswitch_27c
        :pswitch_246
        :pswitch_20f
        :pswitch_1ee
        :pswitch_1b6
        :pswitch_17e
        :pswitch_13a
        :pswitch_110
        :pswitch_ca
        :pswitch_86
        :pswitch_5c
        :pswitch_16
    .end packed-switch
.end method

.method private layoutArrowView()Landroid/graphics/Point;
    .registers 8

    .line 173
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    invoke-direct {p0, v0}, Lmiuix/internal/widget/ArrowActionSheetPanel;->getArrowPosition(Lmiuix/internal/widget/ActionSheet$ArrowMode;)Landroid/graphics/Point;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    return-object v0
.end method

.method private layoutContentView(Landroid/graphics/Point;)V
    .registers 7

    .line 299
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    invoke-direct {p0, v0, p1}, Lmiuix/internal/widget/ArrowActionSheetPanel;->getContentPanelPosition(Lmiuix/internal/widget/ActionSheet$ArrowMode;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p1

    .line 300
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    add-int/2addr p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/ViewGroup;->layout(IIII)V

    return-void
.end method

.method private updateArrowViewDrawable(Lmiuix/internal/widget/ActionSheet$ArrowMode;)V
    .registers 5

    .line 120
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    .line 121
    invoke-static {p0}, Lmiuix/internal/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 123
    sget-object v2, Lmiuix/internal/widget/ArrowActionSheetPanel$1;->$SwitchMap$miuix$internal$widget$ActionSheet$ArrowMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_74

    const/4 p1, 0x0

    goto :goto_6e

    :pswitch_17
    if-eqz v1, :cond_27

    .line 151
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_20

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_arrow_action_sheet_left_dark:I

    goto :goto_22

    .line 152
    :cond_20
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_arrow_action_sheet_left_light:I

    .line 151
    :goto_22
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_6e

    .line 154
    :cond_27
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2e

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_arrow_action_sheet_right_dark:I

    goto :goto_30

    .line 155
    :cond_2e
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_arrow_action_sheet_right_light:I

    .line 154
    :goto_30
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_6e

    :pswitch_35
    if-eqz v1, :cond_45

    .line 140
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3e

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_arrow_action_sheet_right_dark:I

    goto :goto_40

    .line 141
    :cond_3e
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_arrow_action_sheet_right_light:I

    .line 140
    :goto_40
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_6e

    .line 143
    :cond_45
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4c

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_arrow_action_sheet_left_dark:I

    goto :goto_4e

    .line 144
    :cond_4c
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_arrow_action_sheet_left_light:I

    .line 143
    :goto_4e
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_6e

    .line 133
    :pswitch_53
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5a

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_arrow_action_sheet_bottom_dark:I

    goto :goto_5c

    .line 134
    :cond_5a
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_arrow_action_sheet_bottom_light:I

    .line 133
    :goto_5c
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_6e

    .line 127
    :pswitch_61
    iget-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_68

    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_arrow_action_sheet_top_dark:I

    goto :goto_6a

    .line 128
    :cond_68
    sget v0, Lmiuix/appcompat/R$drawable;->miuix_appcompat_arrow_action_sheet_top_light:I

    .line 127
    :goto_6a
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 162
    :goto_6e
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_53
        :pswitch_53
        :pswitch_53
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method private updateMeasuredSizeAfterSuperMeasured()V
    .registers 10

    .line 82
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 83
    iget-object v1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    .line 84
    iget-object v2, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 85
    iget-object v3, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    .line 88
    iget-object v4, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    sget-object v5, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_TOP_LEFT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v4, v5, :cond_69

    sget-object v8, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_TOP_RIGHT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v8, :cond_69

    sget-object v8, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_LEFT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v8, :cond_69

    sget-object v8, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_RIGHT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v8, :cond_69

    sget-object v8, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_TOP_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v8, :cond_69

    sget-object v8, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-ne v4, v8, :cond_37

    goto :goto_69

    .line 97
    :cond_37
    sget-object v8, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_LEFT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v8, :cond_4f

    sget-object v8, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_RIGHT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v8, :cond_4f

    sget-object v8, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_LEFT_TOP_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v8, :cond_4f

    sget-object v8, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_LEFT_BOTTOM_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v8, :cond_4f

    sget-object v8, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_RIGHT_TOP_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v8, :cond_4f

    sget-object v8, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_RIGHT_BOTTOM_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-ne v4, v8, :cond_84

    .line 100
    :cond_4f
    iget v4, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContentMaxHeight:I

    if-le v3, v4, :cond_84

    .line 101
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 102
    iget v4, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContentMaxHeight:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 103
    iget-object v6, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v6, v3, v4}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 104
    iget-object v3, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    goto :goto_84

    .line 91
    :cond_69
    :goto_69
    iget v4, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContentMaxHeight:I

    sub-int/2addr v4, v1

    if-le v3, v4, :cond_84

    .line 92
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 93
    iget v4, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContentMaxHeight:I

    sub-int/2addr v4, v1

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 94
    iget-object v6, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {p0, v6, v3, v4}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    .line 95
    iget-object v3, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    .line 108
    :cond_84
    :goto_84
    iget-object v4, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v5, :cond_ba

    sget-object v5, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_TOP_RIGHT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v5, :cond_ba

    sget-object v5, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_LEFT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v5, :cond_ba

    sget-object v5, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_RIGHT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v5, :cond_ba

    sget-object v5, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_TOP_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v5, :cond_ba

    sget-object v5, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_BOTTOM_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-ne v4, v5, :cond_9d

    goto :goto_ba

    .line 112
    :cond_9d
    sget-object v1, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_LEFT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v1, :cond_b5

    sget-object v1, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_RIGHT_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v1, :cond_b5

    sget-object v1, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_LEFT_TOP_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v1, :cond_b5

    sget-object v1, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_LEFT_BOTTOM_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v1, :cond_b5

    sget-object v1, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_RIGHT_TOP_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-eq v4, v1, :cond_b5

    sget-object v1, Lmiuix/internal/widget/ActionSheet$ArrowMode;->ARROW_RIGHT_BOTTOM_MODE:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    if-ne v4, v1, :cond_be

    :cond_b5
    add-int/2addr v0, v2

    .line 115
    invoke-virtual {p0, v0, v3}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_be

    :cond_ba
    :goto_ba
    add-int/2addr v1, v3

    .line 111
    invoke-virtual {p0, v2, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :cond_be
    :goto_be
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .line 67
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 68
    sget v0, Lmiuix/appcompat/R$id;->action_sheet_arrow_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    .line 69
    sget v0, Lmiuix/appcompat/R$id;->action_sheet_content:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mContent:Landroid/view/ViewGroup;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 167
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 168
    invoke-direct {p0}, Lmiuix/internal/widget/ArrowActionSheetPanel;->layoutArrowView()Landroid/graphics/Point;

    move-result-object p1

    .line 169
    invoke-direct {p0, p1}, Lmiuix/internal/widget/ArrowActionSheetPanel;->layoutContentView(Landroid/graphics/Point;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 4

    .line 74
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_d

    .line 75
    iget-object v0, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    invoke-direct {p0, v0}, Lmiuix/internal/widget/ArrowActionSheetPanel;->updateArrowViewDrawable(Lmiuix/internal/widget/ActionSheet$ArrowMode;)V

    .line 77
    :cond_d
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 78
    invoke-direct {p0}, Lmiuix/internal/widget/ArrowActionSheetPanel;->updateMeasuredSizeAfterSuperMeasured()V

    return-void
.end method

.method public setArrowMode(Lmiuix/internal/widget/ActionSheet$ArrowMode;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lmiuix/internal/widget/ArrowActionSheetPanel;->mArrowMode:Lmiuix/internal/widget/ActionSheet$ArrowMode;

    return-void
.end method

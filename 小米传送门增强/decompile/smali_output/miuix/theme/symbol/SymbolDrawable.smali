.class public Lmiuix/theme/symbol/SymbolDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SymbolDrawable.java"


# static fields
.field private static final STATE_DISABLED:[I

.field private static final STATE_PRESSED:[I


# instance fields
.field private autoMirroredCompat:Z

.field private backgroundBrush:Lmiuix/theme/symbol/SymbolPaint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/theme/symbol/SymbolPaint<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundContourBrush:Lmiuix/theme/symbol/SymbolPaint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/theme/symbol/SymbolPaint<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundContourWidthPx:I

.field private compatAlpha:I

.field private contourBrush:Lmiuix/theme/symbol/SymbolPaint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/theme/symbol/SymbolPaint<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private contourWidthPx:I

.field private disabledAlpha:F

.field private drawBackgroundContour:Z

.field private drawContour:Z

.field private drawIconColor:I

.field private effectiveIconColor:I

.field private effectiveShadowColor:I

.field private fontPath:Ljava/lang/String;

.field private iconBrush:Lmiuix/theme/symbol/SymbolPaint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/theme/symbol/SymbolPaint<",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private iconColorFilter:Landroid/graphics/ColorFilter;

.field private iconHeight:I

.field private iconOffsetXPx:I

.field private iconOffsetYPx:I

.field private iconSize:I

.field private iconText:Ljava/lang/String;

.field private iconWidth:I

.field private invalidateShadowEnabled:Z

.field private invalidationEnabled:Z

.field private normalAlpha:F

.field private paddingBounds:Landroid/graphics/Rect;

.field private paddingPx:I

.field private pressedAlpha:F

.field private res:Landroid/content/res/Resources;

.field private respectFontBounds:Z

.field private roundedCornerRxPx:F

.field private roundedCornerRyPx:F

.field private shadowColor:Landroid/content/res/ColorStateList;

.field private shadowDx:F

.field private shadowDy:F

.field private shadowRadius:F

.field private sizeXPx:I

.field private sizeYPx:I

.field private textBound:Landroid/graphics/Rect;

.field private textBoundOffset:Landroid/graphics/Point;

.field private theme:Landroid/content/res/Resources$Theme;

.field private tint:Landroid/content/res/ColorStateList;

.field private tintFilter:Landroid/graphics/ColorFilter;

.field private tintPorterMode:Landroid/graphics/PorterDuff$Mode;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const v0, -0x101009e

    .line 39
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/theme/symbol/SymbolDrawable;->STATE_DISABLED:[I

    const v0, 0x101009e

    const v1, 0x10100a7

    .line 40
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lmiuix/theme/symbol/SymbolDrawable;->STATE_PRESSED:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 95
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 44
    new-instance v0, Lmiuix/theme/symbol/SymbolPaint;

    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    invoke-direct {v0, v1}, Lmiuix/theme/symbol/SymbolPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    .line 45
    new-instance v0, Lmiuix/theme/symbol/SymbolPaint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-direct {v0, v1}, Lmiuix/theme/symbol/SymbolPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->backgroundContourBrush:Lmiuix/theme/symbol/SymbolPaint;

    .line 46
    new-instance v0, Lmiuix/theme/symbol/SymbolPaint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-direct {v0, v1}, Lmiuix/theme/symbol/SymbolPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->backgroundBrush:Lmiuix/theme/symbol/SymbolPaint;

    .line 47
    new-instance v0, Lmiuix/theme/symbol/SymbolPaint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-direct {v0, v1}, Lmiuix/theme/symbol/SymbolPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->contourBrush:Lmiuix/theme/symbol/SymbolPaint;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->paddingBounds:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->textBound:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->textBoundOffset:Landroid/graphics/Point;

    .line 54
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->tintPorterMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->effectiveIconColor:I

    .line 58
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->drawIconColor:I

    const/16 v1, 0xff

    .line 60
    iput v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->compatAlpha:I

    .line 61
    iput-boolean v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->autoMirroredCompat:Z

    .line 62
    iput-boolean v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->invalidationEnabled:Z

    .line 63
    iput-boolean v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->invalidateShadowEnabled:Z

    const/4 v1, -0x1

    .line 65
    iput v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->sizeXPx:I

    .line 66
    iput v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->sizeYPx:I

    .line 67
    iput-boolean v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->respectFontBounds:Z

    .line 68
    iput-boolean v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->drawContour:Z

    .line 69
    iput-boolean v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->drawBackgroundContour:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 71
    iput v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->roundedCornerRxPx:F

    .line 72
    iput v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->roundedCornerRyPx:F

    .line 73
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->paddingPx:I

    .line 74
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->contourWidthPx:I

    .line 75
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->backgroundContourWidthPx:I

    .line 76
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconOffsetXPx:I

    .line 77
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconOffsetYPx:I

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowRadius:F

    .line 79
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDx:F

    .line 80
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDy:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 86
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->normalAlpha:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 87
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->pressedAlpha:F

    const v0, 0x3e99999a    # 0.3f

    .line 88
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->disabledAlpha:F

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->typeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Typeface;IILandroid/content/res/ColorStateList;)V
    .registers 16

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lmiuix/theme/symbol/SymbolDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Ljava/lang/String;Landroid/graphics/Typeface;IIILandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Ljava/lang/String;Landroid/graphics/Typeface;IIILandroid/content/res/ColorStateList;)V
    .registers 12

    .line 108
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 44
    new-instance v0, Lmiuix/theme/symbol/SymbolPaint;

    new-instance v1, Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V

    invoke-direct {v0, v1}, Lmiuix/theme/symbol/SymbolPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    .line 45
    new-instance v0, Lmiuix/theme/symbol/SymbolPaint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-direct {v0, v1}, Lmiuix/theme/symbol/SymbolPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->backgroundContourBrush:Lmiuix/theme/symbol/SymbolPaint;

    .line 46
    new-instance v0, Lmiuix/theme/symbol/SymbolPaint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-direct {v0, v1}, Lmiuix/theme/symbol/SymbolPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->backgroundBrush:Lmiuix/theme/symbol/SymbolPaint;

    .line 47
    new-instance v0, Lmiuix/theme/symbol/SymbolPaint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-direct {v0, v1}, Lmiuix/theme/symbol/SymbolPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->contourBrush:Lmiuix/theme/symbol/SymbolPaint;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->paddingBounds:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->textBound:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->textBoundOffset:Landroid/graphics/Point;

    .line 54
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->tintPorterMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->effectiveIconColor:I

    .line 58
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->drawIconColor:I

    const/16 v1, 0xff

    .line 60
    iput v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->compatAlpha:I

    .line 61
    iput-boolean v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->autoMirroredCompat:Z

    .line 62
    iput-boolean v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->invalidationEnabled:Z

    .line 63
    iput-boolean v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->invalidateShadowEnabled:Z

    const/4 v1, -0x1

    .line 65
    iput v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->sizeXPx:I

    .line 66
    iput v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->sizeYPx:I

    .line 67
    iput-boolean v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->respectFontBounds:Z

    .line 68
    iput-boolean v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->drawContour:Z

    .line 69
    iput-boolean v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->drawBackgroundContour:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 71
    iput v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->roundedCornerRxPx:F

    .line 72
    iput v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->roundedCornerRyPx:F

    .line 73
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->paddingPx:I

    .line 74
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->contourWidthPx:I

    .line 75
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->backgroundContourWidthPx:I

    .line 76
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconOffsetXPx:I

    .line 77
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconOffsetYPx:I

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowRadius:F

    .line 79
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDx:F

    .line 80
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDy:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 86
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->normalAlpha:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 87
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->pressedAlpha:F

    const v0, 0x3e99999a    # 0.3f

    .line 88
    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->disabledAlpha:F

    .line 109
    iput-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->res:Landroid/content/res/Resources;

    .line 110
    iput-object p2, p0, Lmiuix/theme/symbol/SymbolDrawable;->theme:Landroid/content/res/Resources$Theme;

    .line 111
    iput-object p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconText:Ljava/lang/String;

    .line 112
    iput-object p4, p0, Lmiuix/theme/symbol/SymbolDrawable;->typeface:Landroid/graphics/Typeface;

    if-lez p5, :cond_98

    .line 114
    iput p5, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconWidth:I

    :cond_98
    if-lez p6, :cond_9c

    .line 117
    iput p6, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconHeight:I

    :cond_9c
    if-lez p7, :cond_a0

    .line 120
    iput p7, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconSize:I

    .line 122
    :cond_a0
    iput-object p8, p0, Lmiuix/theme/symbol/SymbolDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 123
    invoke-direct {p0, p4}, Lmiuix/theme/symbol/SymbolDrawable;->initBrushes(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 8

    .line 135
    const-string v0, "fonts/misymbol_vf.ttf"

    iput-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->res:Landroid/content/res/Resources;

    .line 136
    iput-object p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->theme:Landroid/content/res/Resources$Theme;

    const/4 v1, 0x0

    if-eqz p3, :cond_10

    .line 139
    sget-object v2, Lmiuix/theme/R$styleable;->SymbolDrawable:[I

    invoke-virtual {p3, p2, v2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    goto :goto_16

    .line 141
    :cond_10
    sget-object p3, Lmiuix/theme/R$styleable;->SymbolDrawable:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 143
    :goto_16
    sget p3, Lmiuix/theme/R$styleable;->SymbolDrawable_symbolTintColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 144
    sget p3, Lmiuix/theme/R$styleable;->SymbolDrawable_android_fontFamily:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->fontPath:Ljava/lang/String;

    .line 145
    sget p3, Lmiuix/theme/R$styleable;->SymbolDrawable_symbolShadowColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowColor:Landroid/content/res/ColorStateList;

    .line 146
    sget p3, Lmiuix/theme/R$styleable;->SymbolDrawable_symbolShadowDx:I

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDx:F

    .line 147
    sget p3, Lmiuix/theme/R$styleable;->SymbolDrawable_symbolShadowDy:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDy:F

    .line 148
    sget p3, Lmiuix/theme/R$styleable;->SymbolDrawable_symbolShadowRadius:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowRadius:F

    .line 149
    sget p3, Lmiuix/theme/R$styleable;->SymbolDrawable_symbolNormalAlpha:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->normalAlpha:F

    .line 150
    sget p3, Lmiuix/theme/R$styleable;->SymbolDrawable_symbolPressedAlpha:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->pressedAlpha:F

    .line 151
    sget p3, Lmiuix/theme/R$styleable;->SymbolDrawable_symbolDisabledAlpha:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->disabledAlpha:F

    .line 152
    sget p3, Lmiuix/theme/R$styleable;->SymbolDrawable_symbolIconWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconWidth:I

    .line 153
    sget p3, Lmiuix/theme/R$styleable;->SymbolDrawable_symbolIconHeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconHeight:I

    .line 154
    sget p3, Lmiuix/theme/R$styleable;->SymbolDrawable_symbolIconSize:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconSize:I

    .line 155
    sget p3, Lmiuix/theme/R$styleable;->SymbolDrawable_symbolAutoMirroredCompat:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->autoMirroredCompat:Z

    .line 156
    sget p3, Lmiuix/theme/R$styleable;->SymbolDrawable_symbolText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 157
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconText:Ljava/lang/String;

    .line 160
    :cond_8f
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'wght\' "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lmiuix/theme/symbol/HyperSymbolFont;->getWeightByConfig(Landroid/content/res/Configuration;)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 162
    :try_start_a8
    new-instance v1, Landroid/graphics/Typeface$Builder;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iget-object v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->fontPath:Ljava/lang/String;

    if-eqz v2, :cond_b3

    goto :goto_b4

    :cond_b3
    move-object v2, v0

    :goto_b4
    invoke-direct {v1, p1, v2}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1, p3}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->typeface:Landroid/graphics/Typeface;
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_c1} :catch_c2

    goto :goto_f2

    :catch_c2
    move-exception p1

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning!! fontPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->fontPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " build typeface failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MiuixSymbol"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance p1, Landroid/graphics/Typeface$Builder;

    invoke-direct {p1, v0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1, p3}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->typeface:Landroid/graphics/Typeface;

    .line 170
    :goto_f2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    iget p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconHeight:I

    if-gtz p1, :cond_fd

    iget p2, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconWidth:I

    if-lez p2, :cond_104

    .line 172
    :cond_fd
    iget p2, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconSize:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->paddingPx:I

    .line 174
    :cond_104
    iget-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->typeface:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Lmiuix/theme/symbol/SymbolDrawable;->initBrushes(Landroid/graphics/Typeface;)V

    .line 175
    iget-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->tint:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_110

    .line 176
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->updateTintColor()V

    .line 178
    :cond_110
    iget p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->normalAlpha:F

    invoke-direct {p0, p1}, Lmiuix/theme/symbol/SymbolDrawable;->setAlphaF(F)V

    return-void
.end method

.method private initBrushes(Landroid/graphics/Typeface;)V
    .registers 3

    .line 209
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v0}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 210
    iget-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {p1}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    check-cast p1, Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 211
    iget-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {p1}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    check-cast p1, Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 212
    iget-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {p1}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    check-cast p1, Landroid/text/TextPaint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 213
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->updateShadow()V

    .line 215
    iget-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->contourBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {p1}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    iget-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->backgroundContourBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {p1}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private needMirroring()Z
    .registers 3

    .line 407
    iget-boolean v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->autoMirroredCompat:Z

    if-eqz v0, :cond_c

    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private offsetIcon(Landroid/graphics/Rect;)V
    .registers 6

    .line 397
    iget-boolean v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->respectFontBounds:Z

    if-eqz v0, :cond_e

    .line 398
    iget-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->textBoundOffset:Landroid/graphics/Point;

    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconOffsetXPx:I

    iget v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconOffsetYPx:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_3b

    .line 400
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->textBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 401
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->textBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    .line 402
    iget-object v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->textBoundOffset:Landroid/graphics/Point;

    iget v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconOffsetXPx:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->textBound:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    iget v3, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconOffsetYPx:I

    add-int/2addr p1, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Point;->set(II)V

    :goto_3b
    return-void
.end method

.method private setAlphaF(F)V
    .registers 3

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 461
    invoke-virtual {p0, p1}, Lmiuix/theme/symbol/SymbolDrawable;->setAlpha(I)V

    return-void
.end method

.method private toDisabledState()Z
    .registers 2

    .line 445
    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->disabledAlpha:F

    invoke-direct {p0, v0}, Lmiuix/theme/symbol/SymbolDrawable;->setAlphaF(F)V

    const/4 v0, 0x1

    return v0
.end method

.method private toNormalState()Z
    .registers 2

    .line 456
    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->normalAlpha:F

    invoke-direct {p0, v0}, Lmiuix/theme/symbol/SymbolDrawable;->setAlphaF(F)V

    const/4 v0, 0x1

    return v0
.end method

.method private toPressedState()Z
    .registers 2

    .line 451
    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->pressedAlpha:F

    invoke-direct {p0, v0}, Lmiuix/theme/symbol/SymbolDrawable;->setAlphaF(F)V

    const/4 v0, 0x1

    return v0
.end method

.method private updateColorWithAlpha(II)I
    .registers 4

    ushr-int/lit8 v0, p1, 0x18

    mul-int/2addr v0, p2

    .line 330
    div-int/lit16 v0, v0, 0xff

    shl-int/lit8 p2, v0, 0x18

    const v0, 0xffffff

    and-int/2addr p1, v0

    or-int/2addr p1, p2

    return p1
.end method

.method private updatePaddingBounds(Landroid/graphics/Rect;)V
    .registers 7

    .line 384
    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->paddingPx:I

    if-ltz v0, :cond_29

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gt v0, v1, :cond_29

    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->paddingPx:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt v0, v1, :cond_29

    .line 385
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->paddingBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->paddingPx:I

    add-int/2addr v1, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v2

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v2

    invoke-virtual {v0, v1, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_29
    return-void
.end method

.method private updateShadow()V
    .registers 6

    .line 473
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_10

    .line 474
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v0}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    return-void

    .line 477
    :cond_10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    iget-object v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->effectiveShadowColor:I

    if-nez v0, :cond_2e

    .line 479
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v0}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    goto :goto_41

    .line 481
    :cond_2e
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v0}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    iget v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowRadius:F

    iget v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDx:F

    iget v3, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDy:F

    iget v4, p0, Lmiuix/theme/symbol/SymbolDrawable;->effectiveShadowColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :goto_41
    return-void
.end method

.method private updateTextBounds()V
    .registers 6

    .line 390
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconText:Ljava/lang/String;

    .line 391
    iget v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconSize:I

    if-lez v1, :cond_8

    :goto_6
    int-to-float v1, v1

    goto :goto_f

    :cond_8
    iget-object v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->paddingBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_6

    .line 392
    :goto_f
    iget-object v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v2}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    check-cast v2, Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 393
    iget-object v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v1}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    check-cast v1, Landroid/text/TextPaint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lmiuix/theme/symbol/SymbolDrawable;->textBound:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-void
.end method

.method private updateTintColor()V
    .registers 4

    .line 465
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->tint:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 466
    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->tintFilter:Landroid/graphics/ColorFilter;

    return-void

    .line 469
    :cond_8
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->effectiveIconColor:I

    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .registers 2

    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public copy(Lmiuix/theme/symbol/SymbolDrawable;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/graphics/Typeface;IIIILjava/lang/String;ZIIZZZFFIIIIIFFFLandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/ColorFilter;)Lmiuix/theme/symbol/SymbolDrawable;
    .registers 41

    move-object v0, p0

    if-eqz p1, :cond_5

    move-object v10, p1

    goto :goto_18

    .line 516
    :cond_5
    new-instance v10, Lmiuix/theme/symbol/SymbolDrawable;

    move-object v1, v10

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p9

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p27

    invoke-direct/range {v1 .. v9}, Lmiuix/theme/symbol/SymbolDrawable;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Ljava/lang/String;Landroid/graphics/Typeface;IIILandroid/content/res/ColorStateList;)V

    :goto_18
    if-eqz p8, :cond_1d

    move/from16 v1, p8

    goto :goto_1f

    .line 517
    :cond_1d
    iget v1, v0, Lmiuix/theme/symbol/SymbolDrawable;->compatAlpha:I

    :goto_1f
    iput v1, v10, Lmiuix/theme/symbol/SymbolDrawable;->compatAlpha:I

    if-eqz p9, :cond_26

    move-object/from16 v1, p9

    goto :goto_28

    .line 518
    :cond_26
    iget-object v1, v0, Lmiuix/theme/symbol/SymbolDrawable;->iconText:Ljava/lang/String;

    :goto_28
    iput-object v1, v10, Lmiuix/theme/symbol/SymbolDrawable;->iconText:Ljava/lang/String;

    move/from16 v1, p10

    .line 519
    iput-boolean v1, v10, Lmiuix/theme/symbol/SymbolDrawable;->autoMirroredCompat:Z

    const/4 v1, -0x1

    move/from16 v2, p11

    if-eq v2, v1, :cond_34

    goto :goto_36

    .line 520
    :cond_34
    iget v2, v0, Lmiuix/theme/symbol/SymbolDrawable;->sizeXPx:I

    :goto_36
    iput v2, v10, Lmiuix/theme/symbol/SymbolDrawable;->sizeXPx:I

    move/from16 v2, p12

    if-eq v2, v1, :cond_3d

    goto :goto_40

    .line 521
    :cond_3d
    iget v1, v0, Lmiuix/theme/symbol/SymbolDrawable;->sizeYPx:I

    move v2, v1

    :goto_40
    iput v2, v10, Lmiuix/theme/symbol/SymbolDrawable;->sizeYPx:I

    move/from16 v1, p13

    .line 522
    iput-boolean v1, v10, Lmiuix/theme/symbol/SymbolDrawable;->respectFontBounds:Z

    move/from16 v1, p14

    .line 523
    iput-boolean v1, v10, Lmiuix/theme/symbol/SymbolDrawable;->drawContour:Z

    move/from16 v1, p15

    .line 524
    iput-boolean v1, v10, Lmiuix/theme/symbol/SymbolDrawable;->drawBackgroundContour:Z

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v2, p16, v1

    if-eqz v2, :cond_57

    move/from16 v2, p16

    goto :goto_59

    .line 525
    :cond_57
    iget v2, v0, Lmiuix/theme/symbol/SymbolDrawable;->roundedCornerRxPx:F

    :goto_59
    iput v2, v10, Lmiuix/theme/symbol/SymbolDrawable;->roundedCornerRxPx:F

    cmpl-float v1, p17, v1

    if-eqz v1, :cond_62

    move/from16 v1, p17

    goto :goto_64

    .line 526
    :cond_62
    iget v1, v0, Lmiuix/theme/symbol/SymbolDrawable;->roundedCornerRyPx:F

    :goto_64
    iput v1, v10, Lmiuix/theme/symbol/SymbolDrawable;->roundedCornerRyPx:F

    if-eqz p18, :cond_6b

    move/from16 v1, p18

    goto :goto_6d

    .line 527
    :cond_6b
    iget v1, v0, Lmiuix/theme/symbol/SymbolDrawable;->paddingPx:I

    :goto_6d
    iput v1, v10, Lmiuix/theme/symbol/SymbolDrawable;->paddingPx:I

    if-eqz p19, :cond_74

    move/from16 v1, p19

    goto :goto_76

    .line 528
    :cond_74
    iget v1, v0, Lmiuix/theme/symbol/SymbolDrawable;->contourWidthPx:I

    :goto_76
    iput v1, v10, Lmiuix/theme/symbol/SymbolDrawable;->contourWidthPx:I

    if-eqz p20, :cond_7d

    move/from16 v1, p20

    goto :goto_7f

    .line 529
    :cond_7d
    iget v1, v0, Lmiuix/theme/symbol/SymbolDrawable;->backgroundContourWidthPx:I

    :goto_7f
    iput v1, v10, Lmiuix/theme/symbol/SymbolDrawable;->backgroundContourWidthPx:I

    if-eqz p21, :cond_86

    move/from16 v1, p21

    goto :goto_88

    .line 530
    :cond_86
    iget v1, v0, Lmiuix/theme/symbol/SymbolDrawable;->iconOffsetXPx:I

    :goto_88
    iput v1, v10, Lmiuix/theme/symbol/SymbolDrawable;->iconOffsetXPx:I

    if-eqz p22, :cond_8f

    move/from16 v1, p22

    goto :goto_91

    .line 531
    :cond_8f
    iget v1, v0, Lmiuix/theme/symbol/SymbolDrawable;->iconOffsetYPx:I

    :goto_91
    iput v1, v10, Lmiuix/theme/symbol/SymbolDrawable;->iconOffsetYPx:I

    const/4 v1, 0x0

    cmpl-float v2, p23, v1

    if-eqz v2, :cond_9b

    move/from16 v2, p23

    goto :goto_9d

    .line 532
    :cond_9b
    iget v2, v0, Lmiuix/theme/symbol/SymbolDrawable;->shadowRadius:F

    :goto_9d
    iput v2, v10, Lmiuix/theme/symbol/SymbolDrawable;->shadowRadius:F

    cmpl-float v2, p24, v1

    if-eqz v2, :cond_a6

    move/from16 v2, p24

    goto :goto_a8

    .line 533
    :cond_a6
    iget v2, v0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDx:F

    :goto_a8
    iput v2, v10, Lmiuix/theme/symbol/SymbolDrawable;->shadowDx:F

    cmpl-float v1, p25, v1

    if-eqz v1, :cond_b1

    move/from16 v1, p25

    goto :goto_b3

    .line 534
    :cond_b1
    iget v1, v0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDy:F

    :goto_b3
    iput v1, v10, Lmiuix/theme/symbol/SymbolDrawable;->shadowDy:F

    if-eqz p26, :cond_ba

    move-object/from16 v1, p26

    goto :goto_bc

    .line 535
    :cond_ba
    iget-object v1, v0, Lmiuix/theme/symbol/SymbolDrawable;->shadowColor:Landroid/content/res/ColorStateList;

    :goto_bc
    iput-object v1, v10, Lmiuix/theme/symbol/SymbolDrawable;->shadowColor:Landroid/content/res/ColorStateList;

    if-eqz p27, :cond_c3

    move-object/from16 v1, p27

    goto :goto_c5

    .line 536
    :cond_c3
    iget-object v1, v0, Lmiuix/theme/symbol/SymbolDrawable;->tint:Landroid/content/res/ColorStateList;

    :goto_c5
    iput-object v1, v10, Lmiuix/theme/symbol/SymbolDrawable;->tint:Landroid/content/res/ColorStateList;

    if-eqz p28, :cond_cc

    move-object/from16 v1, p28

    goto :goto_ce

    .line 537
    :cond_cc
    iget-object v1, v0, Lmiuix/theme/symbol/SymbolDrawable;->tintPorterMode:Landroid/graphics/PorterDuff$Mode;

    :goto_ce
    iput-object v1, v10, Lmiuix/theme/symbol/SymbolDrawable;->tintPorterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz p29, :cond_d5

    move-object/from16 v1, p29

    goto :goto_d7

    .line 538
    :cond_d5
    iget-object v1, v0, Lmiuix/theme/symbol/SymbolDrawable;->iconColorFilter:Landroid/graphics/ColorFilter;

    :goto_d7
    iput-object v1, v10, Lmiuix/theme/symbol/SymbolDrawable;->iconColorFilter:Landroid/graphics/ColorFilter;

    return-object v10
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 221
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconText:Ljava/lang/String;

    if-nez v0, :cond_5

    return-void

    .line 223
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 224
    invoke-direct {p0, v7}, Lmiuix/theme/symbol/SymbolDrawable;->updatePaddingBounds(Landroid/graphics/Rect;)V

    .line 225
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->updateTextBounds()V

    .line 226
    invoke-direct {p0, v7}, Lmiuix/theme/symbol/SymbolDrawable;->offsetIcon(Landroid/graphics/Rect;)V

    .line 228
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->needMirroring()Z

    move-result v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    if-eqz v0, :cond_2c

    .line 229
    iget v0, v7, Landroid/graphics/Rect;->right:I

    iget v1, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v7, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 230
    invoke-virtual {p1, v9, v8}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_35

    .line 232
    :cond_2c
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v7, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 235
    :goto_35
    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->roundedCornerRyPx:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_94

    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->roundedCornerRxPx:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_94

    .line 236
    iget-boolean v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->drawBackgroundContour:Z

    if-eqz v0, :cond_77

    .line 237
    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->backgroundContourWidthPx:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 238
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 239
    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->roundedCornerRxPx:F

    iget v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->roundedCornerRyPx:F

    iget-object v3, p0, Lmiuix/theme/symbol/SymbolDrawable;->backgroundBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v3}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 240
    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->roundedCornerRxPx:F

    iget v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->roundedCornerRyPx:F

    iget-object v3, p0, Lmiuix/theme/symbol/SymbolDrawable;->backgroundContourBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v3}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_94

    .line 242
    :cond_77
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 243
    iget v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->roundedCornerRxPx:F

    iget v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->roundedCornerRyPx:F

    iget-object v3, p0, Lmiuix/theme/symbol/SymbolDrawable;->backgroundBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v3}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 246
    :cond_94
    :goto_94
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_a6

    .line 247
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v0}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_c9

    .line 249
    :cond_a6
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v0}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 250
    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->effectiveIconColor:I

    if-eqz v0, :cond_c9

    .line 251
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v0}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    iget v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->effectiveIconColor:I

    iget v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->compatAlpha:I

    invoke-direct {p0, v1, v2}, Lmiuix/theme/symbol/SymbolDrawable;->updateColorWithAlpha(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 254
    :cond_c9
    :goto_c9
    iget-boolean v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->respectFontBounds:Z

    if-eqz v0, :cond_ed

    .line 255
    iget-object v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->textBoundOffset:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v2

    iget-object v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->textBound:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v0

    int-to-float v5, v2

    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v0}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_10f

    .line 257
    :cond_ed
    iget-object v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->textBoundOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v0

    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->textBound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lmiuix/theme/symbol/SymbolDrawable;->textBoundOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v2

    int-to-float v5, v0

    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v0}, Lmiuix/theme/symbol/SymbolPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 261
    :goto_10f
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->needMirroring()Z

    move-result v0

    if-eqz v0, :cond_127

    .line 262
    iget v0, v7, Landroid/graphics/Rect;->right:I

    iget v1, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, v7, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 263
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_132

    .line 265
    :cond_127
    iget v0, v7, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, v7, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_132
    return-void
.end method

.method public getAlpha()I
    .registers 2

    .line 280
    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->compatAlpha:I

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 192
    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconHeight:I

    if-nez v0, :cond_8

    .line 193
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :cond_8
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 183
    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconWidth:I

    if-nez v0, :cond_8

    .line 184
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :cond_8
    return v0
.end method

.method public getOpacity()I
    .registers 4

    .line 304
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->tintFilter:Landroid/graphics/ColorFilter;

    const/4 v1, -0x3

    if-nez v0, :cond_16

    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_a

    goto :goto_16

    .line 307
    :cond_a
    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->compatAlpha:I

    const/16 v2, 0xff

    if-ne v0, v2, :cond_12

    const/4 v0, -0x1

    return v0

    :cond_12
    if-nez v0, :cond_16

    const/4 v0, -0x2

    return v0

    :cond_16
    :goto_16
    return v1
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 130
    invoke-direct {p0, p1, p3, p4}, Lmiuix/theme/symbol/SymbolDrawable;->init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public isStateful()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .registers 6

    .line 422
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v0, p1}, Lmiuix/theme/symbol/SymbolPaint;->applyState([I)Z

    move-result v0

    .line 423
    iget-object v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->contourBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v1, p1}, Lmiuix/theme/symbol/SymbolPaint;->applyState([I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_15

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    move v0, v2

    goto :goto_16

    :cond_15
    :goto_15
    move v0, v3

    .line 424
    :goto_16
    iget-object v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->backgroundBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v1, p1}, Lmiuix/theme/symbol/SymbolPaint;->applyState([I)Z

    move-result v1

    if-nez v1, :cond_23

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    move v0, v2

    goto :goto_24

    :cond_23
    :goto_23
    move v0, v3

    .line 425
    :goto_24
    iget-object v1, p0, Lmiuix/theme/symbol/SymbolDrawable;->backgroundContourBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v1, p1}, Lmiuix/theme/symbol/SymbolPaint;->applyState([I)Z

    move-result v1

    if-nez v1, :cond_2e

    if-eqz v0, :cond_2f

    :cond_2e
    move v2, v3

    .line 427
    :cond_2f
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->tint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_37

    .line 428
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->updateTintColor()V

    goto :goto_38

    :cond_37
    move v3, v2

    .line 431
    :goto_38
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->updateShadow()V

    .line 432
    sget-object v0, Lmiuix/theme/symbol/SymbolDrawable;->STATE_DISABLED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 433
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->toDisabledState()Z

    return v3

    .line 436
    :cond_47
    sget-object v0, Lmiuix/theme/symbol/SymbolDrawable;->STATE_PRESSED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 437
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->toPressedState()Z

    return v3

    .line 440
    :cond_53
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->toNormalState()Z

    return v3
.end method

.method public setAlpha(I)V
    .registers 3

    .line 271
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v0, p1}, Lmiuix/theme/symbol/SymbolPaint;->setAlpha(I)V

    .line 272
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->contourBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v0, p1}, Lmiuix/theme/symbol/SymbolPaint;->setAlpha(I)V

    .line 273
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->backgroundBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v0, p1}, Lmiuix/theme/symbol/SymbolPaint;->setAlpha(I)V

    .line 274
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->backgroundContourBrush:Lmiuix/theme/symbol/SymbolPaint;

    invoke-virtual {v0, p1}, Lmiuix/theme/symbol/SymbolPaint;->setAlpha(I)V

    .line 275
    iput p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->compatAlpha:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->iconColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setShadow(IFFF)V
    .registers 5

    .line 366
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowColor:Landroid/content/res/ColorStateList;

    .line 367
    iput p2, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDx:F

    .line 368
    iput p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDy:F

    .line 369
    iput p4, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowRadius:F

    .line 370
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->updateShadow()V

    .line 371
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setShadow(Landroid/content/res/ColorStateList;FFF)V
    .registers 5

    .line 375
    iput-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowColor:Landroid/content/res/ColorStateList;

    .line 376
    iput p2, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDx:F

    .line 377
    iput p3, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDy:F

    .line 378
    iput p4, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowRadius:F

    .line 379
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->updateShadow()V

    .line 380
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setShadowColor(I)V
    .registers 2

    .line 316
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowColor:Landroid/content/res/ColorStateList;

    .line 317
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->updateShadow()V

    .line 318
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setShadowColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 322
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_c

    .line 323
    iput-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowColor:Landroid/content/res/ColorStateList;

    .line 324
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->updateShadow()V

    .line 325
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_c
    return-void
.end method

.method public setShadowDx(F)V
    .registers 3

    .line 335
    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDx:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 336
    iput p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDx:F

    .line 337
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->updateShadow()V

    .line 338
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_e
    return-void
.end method

.method public setShadowDy(F)V
    .registers 3

    .line 343
    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDy:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 344
    iput p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowDy:F

    .line 345
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->updateShadow()V

    .line 346
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_e
    return-void
.end method

.method public setShadowRadius(F)V
    .registers 3

    .line 351
    iget v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_e

    .line 352
    iput p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->shadowRadius:F

    .line 353
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->updateShadow()V

    .line 354
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_e
    return-void
.end method

.method public setState([I)Z
    .registers 2

    if-eqz p1, :cond_7

    .line 202
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 285
    iget-object v0, p0, Lmiuix/theme/symbol/SymbolDrawable;->tint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_c

    .line 286
    iput-object p1, p0, Lmiuix/theme/symbol/SymbolDrawable;->tint:Landroid/content/res/ColorStateList;

    .line 287
    invoke-direct {p0}, Lmiuix/theme/symbol/SymbolDrawable;->updateTintColor()V

    .line 288
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_c
    return-void
.end method

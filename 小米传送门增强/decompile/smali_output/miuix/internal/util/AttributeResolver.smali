.class public Lmiuix/internal/util/AttributeResolver;
.super Ljava/lang/Object;
.source "AttributeResolver.java"


# static fields
.field private static final TYPED_VALUE:Landroid/util/TypedValue;

.field private static final TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lmiuix/internal/util/AttributeResolver;->TYPED_VALUE:Landroid/util/TypedValue;

    .line 22
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lmiuix/internal/util/AttributeResolver;->TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private static getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;
    .registers 2

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_11

    .line 35
    sget-object p0, Lmiuix/internal/util/AttributeResolver;->TYPED_VALUE:Landroid/util/TypedValue;

    return-object p0

    .line 38
    :cond_11
    sget-object p0, Lmiuix/internal/util/AttributeResolver;->TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    if-nez v0, :cond_23

    .line 40
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_23
    return-object v0
.end method

.method private static innerResolveColor(Landroid/content/Context;I)Ljava/lang/Integer;
    .registers 5

    .line 111
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 113
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez p1, :cond_22

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 115
    :cond_22
    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/16 p1, 0x1c

    if-lt p0, p1, :cond_33

    const/16 p1, 0x1f

    if-gt p0, p1, :cond_33

    .line 117
    iget p0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method public static resolve(Landroid/content/Context;I)I
    .registers 4

    .line 54
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 57
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_13

    :cond_12
    const/4 p0, -0x1

    :goto_13
    return p0
.end method

.method public static resolveBoolean(Landroid/content/Context;IZ)Z
    .registers 6

    .line 130
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 133
    iget p1, v0, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x12

    if-ne p1, v1, :cond_2c

    .line 134
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez p1, :cond_24

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    goto :goto_2c

    .line 137
    :cond_24
    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_2a

    move p2, v2

    goto :goto_2c

    :cond_2a
    const/4 p0, 0x0

    move p2, p0

    :cond_2c
    :goto_2c
    return p2
.end method

.method public static resolveColor(Landroid/content/Context;I)I
    .registers 2

    .line 93
    invoke-static {p0, p1}, Lmiuix/internal/util/AttributeResolver;->innerResolveColor(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 95
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 98
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static resolveColor(Landroid/content/Context;II)I
    .registers 3

    .line 102
    invoke-static {p0, p1}, Lmiuix/internal/util/AttributeResolver;->innerResolveColor(Landroid/content/Context;I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 104
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_b
    return p2
.end method

.method public static resolveDimensionPixelSize(Landroid/content/Context;I)I
    .registers 5

    .line 172
    invoke-static {p0, p1}, Lmiuix/internal/util/AttributeResolver;->resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 176
    :cond_8
    iget v1, p1, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2b

    .line 177
    iget v0, p1, Landroid/util/TypedValue;->resourceId:I

    if-lez v0, :cond_1c

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 180
    :cond_1c
    iget p1, p1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    return p0

    :cond_2b
    return v0
.end method

.method public static resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 70
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 72
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez p1, :cond_22

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 78
    :cond_22
    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/16 p1, 0x1c

    if-lt p0, p1, :cond_34

    const/16 p1, 0x1f

    if-gt p0, p1, :cond_34

    .line 80
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    iget p1, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0

    :cond_34
    const/4 p0, 0x0

    return-object p0
.end method

.method public static resolveFloat(Landroid/content/Context;IF)F
    .registers 6

    .line 215
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 218
    iget p1, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2c

    .line 219
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez p1, :cond_29

    .line 220
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p1, v1, :cond_2c

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    goto :goto_2c

    .line 224
    :cond_29
    iget p0, v0, Landroid/util/TypedValue;->data:I

    int-to-float p2, p0

    :cond_2c
    :goto_2c
    return p2
.end method

.method public static resolveInt(Landroid/content/Context;II)I
    .registers 6

    .line 194
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 197
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez p1, :cond_1e

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    goto :goto_2a

    .line 199
    :cond_1e
    iget p0, v0, Landroid/util/TypedValue;->type:I

    const/16 p1, 0x10

    if-lt p0, p1, :cond_2a

    const/16 p1, 0x1f

    if-gt p0, p1, :cond_2a

    .line 201
    iget p2, v0, Landroid/util/TypedValue;->data:I

    :cond_2a
    :goto_2a
    return p2
.end method

.method public static resolveTypedValue(Landroid/content/Context;I)Landroid/util/TypedValue;
    .registers 4

    .line 233
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_11

    return-object v0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

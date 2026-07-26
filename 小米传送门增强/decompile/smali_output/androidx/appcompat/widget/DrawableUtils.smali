.class public Landroidx/appcompat/widget/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedAPI"
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field public static final INSETS_NONE:Landroid/graphics/Rect;

.field private static sInsetsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x10100a0

    .line 45
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->CHECKED_STATE_SET:[I

    const/4 v0, 0x0

    .line 46
    new-array v0, v0, [I

    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->EMPTY_STATE_SET:[I

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 59
    :try_start_15
    const-string v0, "android.graphics.Insets"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

.method public static canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 5

    .line 152
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_23

    .line 154
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    .line 155
    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v0, :cond_50

    .line 156
    check-cast p0, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 158
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_15
    if-ge v2, v0, :cond_50

    aget-object v3, p0, v2

    .line 159
    invoke-static {v3}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-nez v3, :cond_20

    return v1

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 164
    :cond_23
    instance-of v0, p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    if-eqz v0, :cond_32

    .line 165
    check-cast p0, Landroidx/core/graphics/drawable/WrappedDrawable;

    .line 167
    invoke-interface {p0}, Landroidx/core/graphics/drawable/WrappedDrawable;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 165
    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0

    .line 168
    :cond_32
    instance-of v0, p0, Landroidx/appcompat/graphics/drawable/DrawableWrapper;

    if-eqz v0, :cond_41

    .line 169
    check-cast p0, Landroidx/appcompat/graphics/drawable/DrawableWrapper;

    .line 171
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 169
    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0

    .line 172
    :cond_41
    instance-of v0, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-eqz v0, :cond_50

    .line 173
    check-cast p0, Landroid/graphics/drawable/ScaleDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0

    :cond_50
    const/4 p0, 0x1

    return p0
.end method

.method static fixDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 1

    .line 0
    return-void
.end method

.method public static getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .registers 12

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_20

    .line 74
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object p0

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 76
    iget v1, p0, Landroid/graphics/Insets;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 77
    iget v1, p0, Landroid/graphics/Insets;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 78
    iget v1, p0, Landroid/graphics/Insets;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 79
    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0

    .line 82
    :cond_20
    sget-object v0, Landroidx/appcompat/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    if-eqz v0, :cond_b2

    .line 86
    :try_start_24
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getOpticalInsets"

    const/4 v2, 0x0

    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_b2

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 96
    sget-object v1, Landroidx/appcompat/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_47
    if-ge v4, v2, :cond_aa

    aget-object v5, v1, v4

    .line 97
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v7, :sswitch_data_b6

    goto :goto_82

    :sswitch_5a
    const-string v7, "right"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    move v6, v9

    goto :goto_83

    :sswitch_64
    const-string v7, "left"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    move v6, v3

    goto :goto_83

    :sswitch_6e
    const-string v7, "top"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    move v6, v10

    goto :goto_83

    :sswitch_78
    const-string v7, "bottom"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    move v6, v8

    goto :goto_83

    :cond_82
    :goto_82
    const/4 v6, -0x1

    :goto_83
    if-eqz v6, :cond_a1

    if-eq v6, v10, :cond_9a

    if-eq v6, v9, :cond_93

    if-eq v6, v8, :cond_8c

    goto :goto_a7

    .line 108
    :cond_8c
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_a7

    .line 105
    :cond_93
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    goto :goto_a7

    .line 102
    :cond_9a
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->top:I

    goto :goto_a7

    .line 99
    :cond_a1
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->left:I
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_a7} :catch_ab

    :goto_a7
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    :cond_aa
    return-object v0

    .line 116
    :catch_ab
    const-string p0, "DrawableUtils"

    const-string v0, "Couldn\'t obtain the optical insets. Ignoring."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_b2
    sget-object p0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    return-object p0

    nop

    :sswitch_data_b6
    .sparse-switch
        -0x527265d5 -> :sswitch_78
        0x1c155 -> :sswitch_6e
        0x32a007 -> :sswitch_64
        0x677c21c -> :sswitch_5a
    .end sparse-switch
.end method

.method public static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x9

    if-eq p0, v0, :cond_17

    packed-switch p0, :pswitch_data_20

    return-object p1

    .line 206
    :pswitch_e
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 205
    :pswitch_11
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 204
    :pswitch_14
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 203
    :cond_17
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 202
    :cond_1a
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 201
    :cond_1d
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_data_20
    .packed-switch 0xe
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

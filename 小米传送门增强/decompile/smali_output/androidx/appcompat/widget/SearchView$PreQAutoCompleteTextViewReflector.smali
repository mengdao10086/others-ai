.class Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreQAutoCompleteTextViewReflector"
.end annotation


# instance fields
.field private mDoAfterTextChanged:Ljava/lang/reflect/Method;

.field private mDoBeforeTextChanged:Ljava/lang/reflect/Method;

.field private mEnsureImeVisible:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedPrivateApi",
            "SoonBlockedPrivateApi"
        }
    .end annotation

    .line 2044
    const-class v0, Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2037
    iput-object v1, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoBeforeTextChanged:Ljava/lang/reflect/Method;

    .line 2038
    iput-object v1, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoAfterTextChanged:Ljava/lang/reflect/Method;

    .line 2039
    iput-object v1, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mEnsureImeVisible:Ljava/lang/reflect/Method;

    .line 2045
    invoke-static {}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->preApi29Check()V

    const/4 v2, 0x1

    .line 2047
    :try_start_10
    const-string v3, "doBeforeTextChanged"

    .line 2048
    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoBeforeTextChanged:Ljava/lang/reflect/Method;

    .line 2049
    invoke-virtual {v3, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_1b} :catch_1b

    .line 2054
    :catch_1b
    :try_start_1b
    const-string v3, "doAfterTextChanged"

    .line 2055
    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoAfterTextChanged:Ljava/lang/reflect/Method;

    .line 2056
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_26
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1b .. :try_end_26} :catch_26

    .line 2061
    :catch_26
    :try_start_26
    const-string v1, "ensureImeVisible"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    .line 2062
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mEnsureImeVisible:Ljava/lang/reflect/Method;

    .line 2063
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_37
    .catch Ljava/lang/NoSuchMethodException; {:try_start_26 .. :try_end_37} :catch_37

    :catch_37
    return-void
.end method

.method private static preApi29Check()V
    .registers 2

    .line 2100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_7

    return-void

    .line 2101
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedClassVersionError;

    const-string v1, "This function can only be used for API Level < 29."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedClassVersionError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .registers 4

    .line 2080
    invoke-static {}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->preApi29Check()V

    .line 2081
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoAfterTextChanged:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 2083
    :try_start_8
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .registers 4

    .line 2070
    invoke-static {}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->preApi29Check()V

    .line 2071
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoBeforeTextChanged:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 2073
    :try_start_8
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_b

    :catch_b
    :cond_b
    return-void
.end method

.method ensureImeVisible(Landroid/widget/AutoCompleteTextView;)V
    .registers 4

    .line 2090
    invoke-static {}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->preApi29Check()V

    .line 2091
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mEnsureImeVisible:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_10

    .line 2093
    :try_start_7
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :cond_10
    return-void
.end method

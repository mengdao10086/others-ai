.class abstract Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;
.super Ljava/lang/Object;
.source "ReflectionAccessFilterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/ReflectionAccessFilterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AccessChecker"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 86
    invoke-static {}, Lcom/google/gson/internal/JavaVersion;->isJava9OrLater()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 88
    :try_start_6
    const-class v0, Ljava/lang/reflect/AccessibleObject;

    const-string v1, "canAccess"

    const-class v2, Ljava/lang/Object;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker$1;

    invoke-direct {v1, v0}, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker$1;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_19} :catch_1a

    goto :goto_1b

    :catch_1a
    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-nez v1, :cond_22

    .line 107
    new-instance v1, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker$2;

    invoke-direct {v1}, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker$2;-><init>()V

    .line 116
    :cond_22
    sput-object v1, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;->INSTANCE:Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/internal/ReflectionAccessFilterHelper$1;)V
    .registers 2

    .line 80
    invoke-direct {p0}, Lcom/google/gson/internal/ReflectionAccessFilterHelper$AccessChecker;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canAccess(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z
.end method

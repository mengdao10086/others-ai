.class Lcom/google/gson/ReflectionAccessFilter$4;
.super Ljava/lang/Object;
.source "ReflectionAccessFilter.java"

# interfaces
.implements Lcom/google/gson/ReflectionAccessFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/ReflectionAccessFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/Class;)Lcom/google/gson/ReflectionAccessFilter$FilterResult;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/gson/ReflectionAccessFilter$FilterResult;"
        }
    .end annotation

    .line 210
    invoke-static {p1}, Lcom/google/gson/internal/ReflectionAccessFilterHelper;->isAnyPlatformType(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 211
    sget-object p1, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->BLOCK_ALL:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    goto :goto_b

    .line 212
    :cond_9
    sget-object p1, Lcom/google/gson/ReflectionAccessFilter$FilterResult;->INDECISIVE:Lcom/google/gson/ReflectionAccessFilter$FilterResult;

    :goto_b
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 217
    const-string v0, "ReflectionAccessFilter#BLOCK_ALL_PLATFORM"

    return-object v0
.end method

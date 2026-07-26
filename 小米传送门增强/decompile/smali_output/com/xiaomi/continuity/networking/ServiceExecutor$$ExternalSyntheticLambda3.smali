.class public final synthetic Lcom/xiaomi/continuity/networking/ServiceExecutor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/continuity/networking/ServiceExecutor;

.field public final synthetic f$1:Lcom/xiaomi/continuity/networking/ServiceExecutor$ExceptionHandler;

.field public final synthetic f$2:Ljava/util/function/Function;

.field public final synthetic f$3:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/continuity/networking/ServiceExecutor;Lcom/xiaomi/continuity/networking/ServiceExecutor$ExceptionHandler;Ljava/util/function/Function;Ljava/util/function/Supplier;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/continuity/networking/ServiceExecutor$$ExternalSyntheticLambda3;->f$0:Lcom/xiaomi/continuity/networking/ServiceExecutor;

    iput-object p2, p0, Lcom/xiaomi/continuity/networking/ServiceExecutor$$ExternalSyntheticLambda3;->f$1:Lcom/xiaomi/continuity/networking/ServiceExecutor$ExceptionHandler;

    iput-object p3, p0, Lcom/xiaomi/continuity/networking/ServiceExecutor$$ExternalSyntheticLambda3;->f$2:Ljava/util/function/Function;

    iput-object p4, p0, Lcom/xiaomi/continuity/networking/ServiceExecutor$$ExternalSyntheticLambda3;->f$3:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/networking/ServiceExecutor$$ExternalSyntheticLambda3;->f$0:Lcom/xiaomi/continuity/networking/ServiceExecutor;

    iget-object v1, p0, Lcom/xiaomi/continuity/networking/ServiceExecutor$$ExternalSyntheticLambda3;->f$1:Lcom/xiaomi/continuity/networking/ServiceExecutor$ExceptionHandler;

    iget-object v2, p0, Lcom/xiaomi/continuity/networking/ServiceExecutor$$ExternalSyntheticLambda3;->f$2:Ljava/util/function/Function;

    iget-object v3, p0, Lcom/xiaomi/continuity/networking/ServiceExecutor$$ExternalSyntheticLambda3;->f$3:Ljava/util/function/Supplier;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/continuity/networking/ServiceExecutor;->$r8$lambda$zYqBpEIiJwsVtsRIPJl4Os2oAhE(Lcom/xiaomi/continuity/networking/ServiceExecutor;Lcom/xiaomi/continuity/networking/ServiceExecutor$ExceptionHandler;Ljava/util/function/Function;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

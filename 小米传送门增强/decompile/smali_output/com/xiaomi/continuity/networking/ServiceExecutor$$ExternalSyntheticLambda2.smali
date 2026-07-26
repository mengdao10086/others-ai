.class public final synthetic Lcom/xiaomi/continuity/networking/ServiceExecutor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/xiaomi/continuity/networking/ServiceExecutor$ExceptionHandler;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/continuity/networking/ServiceExecutor;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/continuity/networking/ServiceExecutor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/continuity/networking/ServiceExecutor$$ExternalSyntheticLambda2;->f$0:Lcom/xiaomi/continuity/networking/ServiceExecutor;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Exception;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/networking/ServiceExecutor$$ExternalSyntheticLambda2;->f$0:Lcom/xiaomi/continuity/networking/ServiceExecutor;

    invoke-static {v0, p1}, Lcom/xiaomi/continuity/networking/ServiceExecutor;->$r8$lambda$nWZKeYfIPdDBt5lzKWLptJ0GrKs(Lcom/xiaomi/continuity/networking/ServiceExecutor;Ljava/lang/Exception;)V

    return-void
.end method

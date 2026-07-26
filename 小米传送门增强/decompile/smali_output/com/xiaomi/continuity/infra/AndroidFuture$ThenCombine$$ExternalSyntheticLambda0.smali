.class public final synthetic Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine$$ExternalSyntheticLambda0;->f$0:Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;->$r8$lambda$JhVaHfSL545zCHKAY67wIk106z8(Lcom/xiaomi/continuity/infra/AndroidFuture$ThenCombine;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

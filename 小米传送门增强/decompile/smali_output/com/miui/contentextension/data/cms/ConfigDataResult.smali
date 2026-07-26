.class public Lcom/miui/contentextension/data/cms/ConfigDataResult;
.super Ljava/lang/Object;
.source "ConfigDataResult.java"


# instance fields
.field private code:I

.field private result:Lcom/google/gson/JsonPrimitive;

.field private updateIntervalMinutes:Lcom/google/gson/JsonObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/miui/contentextension/data/cms/ConfigDataResult;->code:I

    return v0
.end method

.method public getResult()Lcom/google/gson/JsonPrimitive;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/miui/contentextension/data/cms/ConfigDataResult;->result:Lcom/google/gson/JsonPrimitive;

    return-object v0
.end method

.method public getUpdateIntervalMinutes()Lcom/google/gson/JsonObject;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/miui/contentextension/data/cms/ConfigDataResult;->updateIntervalMinutes:Lcom/google/gson/JsonObject;

    return-object v0
.end method

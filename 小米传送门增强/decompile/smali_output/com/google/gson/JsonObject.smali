.class public final Lcom/google/gson/JsonObject;
.super Lcom/google/gson/JsonElement;
.source "JsonObject.java"


# instance fields
.field private final members:Lcom/google/gson/internal/LinkedTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 41
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/gson/internal/LinkedTreeMap;-><init>(Z)V

    iput-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    if-nez p2, :cond_6

    sget-object p2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    :cond_6
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    if-nez p2, :cond_5

    .line 116
    sget-object p2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    goto :goto_b

    :cond_5
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v0, p2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    move-object p2, v0

    :goto_b
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Character;)V
    .registers 4

    if-nez p2, :cond_5

    .line 127
    sget-object p2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    goto :goto_b

    :cond_5
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v0, p2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Character;)V

    move-object p2, v0

    :goto_b
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .registers 4

    if-nez p2, :cond_5

    .line 105
    sget-object p2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    goto :goto_b

    :cond_5
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v0, p2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    move-object p2, v0

    :goto_b
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-nez p2, :cond_5

    .line 94
    sget-object p2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;

    goto :goto_b

    :cond_5
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v0, p2}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_b
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method public asMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonElement;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/google/gson/JsonElement;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->deepCopy()Lcom/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lcom/google/gson/JsonObject;
    .registers 5

    .line 54
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v1}, Lcom/google/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->deepCopy()Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_f

    :cond_2f
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonElement;",
            ">;>;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_15

    .line 248
    instance-of v0, p1, Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/google/gson/JsonObject;

    iget-object p1, p1, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method public get(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    return-object p1
.end method

.method public getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonArray;

    return-object p1
.end method

.method public getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .registers 3

    .line 223
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonObject;

    return-object p1
.end method

.method public getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonPrimitive;

    return-object p1
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/JsonElement;

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/google/gson/internal/LinkedTreeMap;->size()I

    move-result v0

    return v0
.end method

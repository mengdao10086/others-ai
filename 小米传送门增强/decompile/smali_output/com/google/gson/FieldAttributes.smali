.class public final Lcom/google/gson/FieldAttributes;
.super Ljava/lang/Object;
.source "FieldAttributes.java"


# instance fields
.field private final field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotations()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredType()Ljava/lang/reflect/Type;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasModifier(I)Z
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

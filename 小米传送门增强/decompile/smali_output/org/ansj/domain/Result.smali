.class public Lorg/ansj/domain/Result;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/ansj/domain/Term;",
        ">;"
    }
.end annotation


# instance fields
.field private terms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ansj/domain/Term;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ansj/domain/Term;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/ansj/domain/Result;->terms:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTerms()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ansj/domain/Term;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/ansj/domain/Result;->terms:Ljava/util/List;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/ansj/domain/Term;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/ansj/domain/Result;->terms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 56
    const-string v0, ","

    invoke-virtual {p0, v0}, Lorg/ansj/domain/Result;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 61
    iget-object v0, p0, Lorg/ansj/domain/Result;->terms:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/nlpcn/commons/lang/util/StringUtil;->joiner(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

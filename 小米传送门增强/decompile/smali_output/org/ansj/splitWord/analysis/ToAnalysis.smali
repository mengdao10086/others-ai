.class public Lorg/ansj/splitWord/analysis/ToAnalysis;
.super Lorg/ansj/splitWord/Analysis;
.source "ToAnalysis.java"


# direct methods
.method public varargs constructor <init>([Lorg/nlpcn/commons/lang/tire/domain/Forest;)V
    .registers 4

    .line 88
    invoke-direct {p0}, Lorg/ansj/splitWord/Analysis;-><init>()V

    if-nez p1, :cond_d

    const/4 p1, 0x1

    .line 90
    new-array p1, p1, [Lorg/nlpcn/commons/lang/tire/domain/Forest;

    const/4 v0, 0x0

    sget-object v1, Lorg/ansj/library/UserDefineLibrary;->FOREST:Lorg/nlpcn/commons/lang/tire/domain/Forest;

    aput-object v1, p1, v0

    .line 92
    :cond_d
    iput-object p1, p0, Lorg/ansj/splitWord/Analysis;->forests:[Lorg/nlpcn/commons/lang/tire/domain/Forest;

    return-void
.end method

.method static synthetic access$000(Lorg/ansj/splitWord/analysis/ToAnalysis;)[Lorg/nlpcn/commons/lang/tire/domain/Forest;
    .registers 1

    .line 28
    iget-object p0, p0, Lorg/ansj/splitWord/Analysis;->forests:[Lorg/nlpcn/commons/lang/tire/domain/Forest;

    return-object p0
.end method

.method static synthetic access$100(Lorg/ansj/splitWord/analysis/ToAnalysis;Lorg/ansj/util/Graph;Ljava/util/List;)V
    .registers 3

    .line 28
    invoke-virtual {p0, p1, p2}, Lorg/ansj/splitWord/Analysis;->setRealName(Lorg/ansj/util/Graph;Ljava/util/List;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/ansj/domain/Result;
    .registers 3

    .line 101
    new-instance v0, Lorg/ansj/splitWord/analysis/ToAnalysis;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/nlpcn/commons/lang/tire/domain/Forest;

    invoke-direct {v0, v1}, Lorg/ansj/splitWord/analysis/ToAnalysis;-><init>([Lorg/nlpcn/commons/lang/tire/domain/Forest;)V

    invoke-virtual {v0, p0}, Lorg/ansj/splitWord/Analysis;->parseStr(Ljava/lang/String;)Lorg/ansj/domain/Result;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getResult(Lorg/ansj/util/Graph;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ansj/util/Graph;",
            ")",
            "Ljava/util/List<",
            "Lorg/ansj/domain/Term;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;

    invoke-direct {v0, p0, p1}, Lorg/ansj/splitWord/analysis/ToAnalysis$1;-><init>(Lorg/ansj/splitWord/analysis/ToAnalysis;Lorg/ansj/util/Graph;)V

    .line 80
    invoke-virtual {v0}, Lorg/ansj/splitWord/Analysis$Merger;->merger()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

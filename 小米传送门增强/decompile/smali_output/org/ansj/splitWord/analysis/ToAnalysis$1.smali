.class Lorg/ansj/splitWord/analysis/ToAnalysis$1;
.super Lorg/ansj/splitWord/Analysis$Merger;
.source "ToAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ansj/splitWord/analysis/ToAnalysis;->getResult(Lorg/ansj/util/Graph;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ansj/splitWord/analysis/ToAnalysis;

.field final synthetic val$graph:Lorg/ansj/util/Graph;


# direct methods
.method constructor <init>(Lorg/ansj/splitWord/analysis/ToAnalysis;Lorg/ansj/util/Graph;)V
    .registers 3

    .line 33
    iput-object p1, p0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->this$0:Lorg/ansj/splitWord/analysis/ToAnalysis;

    iput-object p2, p0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->val$graph:Lorg/ansj/util/Graph;

    invoke-direct {p0, p1}, Lorg/ansj/splitWord/Analysis$Merger;-><init>(Lorg/ansj/splitWord/Analysis;)V

    return-void
.end method

.method private getResult()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ansj/domain/Term;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    iget-object v1, p0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->val$graph:Lorg/ansj/util/Graph;

    iget-object v1, v1, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_1d

    .line 72
    iget-object v3, p0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->val$graph:Lorg/ansj/util/Graph;

    iget-object v3, v3, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1a

    .line 73
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 76
    :cond_1d
    iget-object v1, p0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->this$0:Lorg/ansj/splitWord/analysis/ToAnalysis;

    iget-object v2, p0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->val$graph:Lorg/ansj/util/Graph;

    # invokes: Lorg/ansj/splitWord/Analysis;->setRealName(Lorg/ansj/util/Graph;Ljava/util/List;)V
    invoke-static {v1, v2, v0}, Lorg/ansj/splitWord/analysis/ToAnalysis;->access$100(Lorg/ansj/splitWord/analysis/ToAnalysis;Lorg/ansj/util/Graph;Ljava/util/List;)V

    return-object v0
.end method

.method private varargs userDefineRecognition(Lorg/ansj/util/Graph;[Lorg/nlpcn/commons/lang/tire/domain/Forest;)V
    .registers 5

    .line 63
    new-instance v0, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;

    sget-object v1, Lorg/ansj/util/TermUtil$InsertTermType;->SKIP:Lorg/ansj/util/TermUtil$InsertTermType;

    invoke-direct {v0, v1, p2}, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;-><init>(Lorg/ansj/util/TermUtil$InsertTermType;[Lorg/nlpcn/commons/lang/tire/domain/Forest;)V

    iget-object p2, p1, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    invoke-virtual {v0, p2}, Lorg/ansj/recognition/arrimpl/UserDefineRecognition;->recognition([Lorg/ansj/domain/Term;)V

    .line 64
    invoke-virtual {p1}, Lorg/ansj/util/Graph;->rmLittlePath()V

    .line 65
    invoke-virtual {p1}, Lorg/ansj/util/Graph;->walkPathByScore()V

    return-void
.end method


# virtual methods
.method public merger()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ansj/domain/Term;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->val$graph:Lorg/ansj/util/Graph;

    invoke-virtual {v0}, Lorg/ansj/util/Graph;->walkPath()V

    .line 40
    sget-object v0, Lorg/ansj/util/MyStaticValue;->isNumRecognition:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->val$graph:Lorg/ansj/util/Graph;

    iget-boolean v0, v0, Lorg/ansj/util/Graph;->hasNum:Z

    if-eqz v0, :cond_1f

    .line 41
    new-instance v0, Lorg/ansj/recognition/arrimpl/NumRecognition;

    invoke-direct {v0}, Lorg/ansj/recognition/arrimpl/NumRecognition;-><init>()V

    iget-object v1, p0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->val$graph:Lorg/ansj/util/Graph;

    iget-object v1, v1, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    invoke-virtual {v0, v1}, Lorg/ansj/recognition/arrimpl/NumRecognition;->recognition([Lorg/ansj/domain/Term;)V

    .line 45
    :cond_1f
    iget-object v0, p0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->val$graph:Lorg/ansj/util/Graph;

    iget-boolean v0, v0, Lorg/ansj/util/Graph;->hasPerson:Z

    if-eqz v0, :cond_56

    sget-object v0, Lorg/ansj/util/MyStaticValue;->isNameRecognition:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 47
    new-instance v0, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;

    invoke-direct {v0}, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;-><init>()V

    iget-object v1, p0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->val$graph:Lorg/ansj/util/Graph;

    iget-object v1, v1, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    invoke-virtual {v0, v1}, Lorg/ansj/recognition/arrimpl/AsianPersonRecognition;->recognition([Lorg/ansj/domain/Term;)V

    .line 48
    iget-object v0, p0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->val$graph:Lorg/ansj/util/Graph;

    invoke-virtual {v0}, Lorg/ansj/util/Graph;->walkPathByScore()V

    .line 49
    iget-object v0, p0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->val$graph:Lorg/ansj/util/Graph;

    iget-object v0, v0, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    invoke-static {v0}, Lorg/ansj/util/NameFix;->nameAmbiguity([Lorg/ansj/domain/Term;)V

    .line 51
    new-instance v0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;

    invoke-direct {v0}, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;-><init>()V

    iget-object v1, p0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->val$graph:Lorg/ansj/util/Graph;

    iget-object v1, v1, Lorg/ansj/util/Graph;->terms:[Lorg/ansj/domain/Term;

    invoke-virtual {v0, v1}, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->recognition([Lorg/ansj/domain/Term;)V

    .line 52
    iget-object v0, p0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->val$graph:Lorg/ansj/util/Graph;

    invoke-virtual {v0}, Lorg/ansj/util/Graph;->walkPathByScore()V

    .line 56
    :cond_56
    iget-object v0, p0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->val$graph:Lorg/ansj/util/Graph;

    iget-object v1, p0, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->this$0:Lorg/ansj/splitWord/analysis/ToAnalysis;

    # getter for: Lorg/ansj/splitWord/Analysis;->forests:[Lorg/nlpcn/commons/lang/tire/domain/Forest;
    invoke-static {v1}, Lorg/ansj/splitWord/analysis/ToAnalysis;->access$000(Lorg/ansj/splitWord/analysis/ToAnalysis;)[Lorg/nlpcn/commons/lang/tire/domain/Forest;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->userDefineRecognition(Lorg/ansj/util/Graph;[Lorg/nlpcn/commons/lang/tire/domain/Forest;)V

    .line 59
    invoke-direct {p0}, Lorg/ansj/splitWord/analysis/ToAnalysis$1;->getResult()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

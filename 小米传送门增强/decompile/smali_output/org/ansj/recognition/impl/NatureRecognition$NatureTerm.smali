.class public Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;
.super Ljava/lang/Object;
.source "NatureRecognition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ansj/recognition/impl/NatureRecognition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NatureTerm"
.end annotation


# instance fields
.field public score:D

.field public selfScore:D

.field public termNature:Lorg/ansj/domain/TermNature;

.field final synthetic this$0:Lorg/ansj/recognition/impl/NatureRecognition;


# direct methods
.method protected constructor <init>(Lorg/ansj/recognition/impl/NatureRecognition;Lorg/ansj/domain/TermNature;)V
    .registers 5

    .line 235
    iput-object p1, p0, Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;->this$0:Lorg/ansj/recognition/impl/NatureRecognition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 229
    iput-wide v0, p0, Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;->score:D

    .line 236
    iput-object p2, p0, Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;->termNature:Lorg/ansj/domain/TermNature;

    .line 237
    iget p1, p2, Lorg/ansj/domain/TermNature;->frequency:I

    add-int/lit8 p1, p1, 0x1

    int-to-double p1, p1

    iput-wide p1, p0, Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;->selfScore:D

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;->termNature:Lorg/ansj/domain/TermNature;

    iget-object v1, v1, Lorg/ansj/domain/TermNature;->nature:Lorg/ansj/domain/Nature;

    iget-object v1, v1, Lorg/ansj/domain/Nature;->natureStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/ansj/recognition/impl/NatureRecognition$NatureTerm;->selfScore:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

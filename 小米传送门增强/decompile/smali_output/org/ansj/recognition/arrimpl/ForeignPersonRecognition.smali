.class public Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;
.super Ljava/lang/Object;
.source "ForeignPersonRecognition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;
    }
.end annotation


# static fields
.field private static INNAME:Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;

.field private static ISNOTFIRST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRLIST:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private prList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;",
            ">;"
        }
    .end annotation
.end field

.field private tempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ansj/domain/Term;",
            ">;"
        }
    .end annotation
.end field

.field private terms:[Lorg/ansj/domain/Term;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->PRLIST:Ljava/util/LinkedList;

    const/4 v1, 0x0

    .line 26
    sput-object v1, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->INNAME:Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;

    .line 28
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->ISNOTFIRST:Ljava/util/HashSet;

    .line 31
    new-instance v1, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;

    const-string v2, "\u00b7-\u2014\u963f\u57c3\u827e\u7231\u5b89\u6602\u6556\u5965\u6fb3\u7b06\u82ad\u5df4\u767d\u62dc\u73ed\u90a6\u4fdd\u5821\u9c8d\u5317\u8d1d\u672c\u6bd4\u6bd5\u5f7c\u522b\u6ce2\u73bb\u535a\u52c3\u4f2f\u6cca\u535c\u5e03\u624d\u91c7\u4ed3\u67e5\u5dee\u67f4\u5f7b\u5ddd\u8328\u6148\u6b21\u8fbe\u5927\u6234\u4ee3\u4e39\u65e6\u4f46\u5f53\u9053\u5fb7\u5f97\u767b\u8fea\u72c4\u8482\u5e1d\u4e01\u4e1c\u675c\u6566\u591a\u989d\u4fc4\u5384\u9102\u6069\u5c14\u4f10\u6cd5\u8303\u83f2\u82ac\u8d39\u4f5b\u592b\u798f\u5f17\u752b\u5676\u76d6\u5e72\u5188\u54e5\u6208\u9769\u845b\u683c\u5404\u6839\u53e4\u74dc\u54c8\u6d77\u7f55\u7ff0\u6c57\u6c49\u8c6a\u5408\u6cb3\u8d6b\u4ea8\u4faf\u547c\u80e1\u534e\u970d\u57fa\u5409\u53ca\u52a0\u8d3e\u575a\u7b80\u6770\u91d1\u4eac\u4e45\u5c45\u541b\u5580\u5361\u51ef\u574e\u5eb7\u8003\u67ef\u79d1\u53ef\u514b\u80af\u5e93\u594e\u62c9\u5587\u83b1\u6765\u5170\u90ce\u6717\u52b3\u52d2\u96f7\u7d2f\u695e\u9ece\u7406\u674e\u91cc\u8389\u4e3d\u5386\u5229\u7acb\u529b\u8fde\u5ec9\u826f\u5217\u70c8\u6797\u9686\u5362\u864f\u9c81\u8def\u4f26\u4ed1\u7f57\u6d1b\u739b\u9a6c\u4e70\u9ea6\u8fc8\u66fc\u8305\u8302\u6885\u95e8\u8499\u76df\u7c73\u871c\u5bc6\u654f\u660e\u6469\u83ab\u58a8\u9ed8\u59c6\u6728\u7a46\u90a3\u5a1c\u7eb3\u4e43\u5948\u5357\u5185\u5c3c\u5e74\u6d85\u5b81\u7ebd\u52aa\u8bfa\u6b27\u5e15\u6f58\u7554\u5e9e\u57f9\u4f69\u5f6d\u76ae\u5e73\u6cfc\u666e\u5176\u5951\u6070\u5f3a\u4e54\u5207\u94a6\u6c81\u6cc9\u8ba9\u70ed\u8363\u8089\u5112\u745e\u82e5\u8428\u585e\u8d5b\u6851\u745f\u68ee\u838e\u6c99\u5c71\u5584\u7ecd\u820d\u5723\u65bd\u8bd7\u77f3\u4ec0\u53f2\u58eb\u5b88\u65af\u53f8\u4e1d\u82cf\u7d20\u7d22\u5854\u6cf0\u5766\u6c64\u5510\u9676\u7279\u63d0\u6c40\u56fe\u571f\u5410\u6258\u9640\u74e6\u4e07\u738b\u65fa\u5a01\u97e6\u7ef4\u9b4f\u6e29\u6587\u7fc1\u6c83\u4e4c\u543e\u6b66\u4f0d\u897f\u9521\u5e0c\u559c\u590f\u76f8\u9999\u6b47\u8c22\u8f9b\u65b0\u7259\u96c5\u4e9a\u5f66\u5c27\u53f6\u4f9d\u4f0a\u8863\u5b9c\u4e49\u56e0\u97f3\u82f1\u96cd\u5c24\u4e8e\u7ea6\u5bb0\u6cfd\u589e\u8a79\u73cd\u6cbb\u4e2d\u4ef2\u6731\u8bf8\u5353\u5b5c\u7956\u4f50\u4f3d\u5a05\u5c15\u8153\u6ed5\u6d4e\u5609\u6d25\u8d56\u83b2\u7433\u5f8b\u7565\u6155\u59ae\u8042\u88f4\u6d66\u5947\u9f50\u7434\u8339\u73ca\u536b\u6b23\u900a\u672d\u54f2\u667a\u5179\u8299\u6c76\u8fe6\u73c0\u742a\u68b5\u6590\u80e5\u9edb"

    invoke-static {v2}, Lorg/nlpcn/commons/lang/util/StringUtil;->sortCharArray(Ljava/lang/String;)[C

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;-><init>([C)V

    .line 33
    new-instance v2, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;

    const-string v3, "\u00b7-\u963f\u5b89\u5965\u5df4\u6bd4\u5f7c\u6ce2\u5e03\u5bdf\u8328\u5927\u5fb7\u5f97\u4e01\u675c\u5c14\u6cd5\u592b\u4f0f\u752b\u76d6\u683c\u54c8\u57fa\u52a0\u575a\u6377\u91d1\u5361\u79d1\u53ef\u514b\u5e93\u62c9\u83b1\u5170\u52d2\u96f7\u91cc\u5386\u5229\u8fde\u5217\u5362\u9c81\u7f57\u6d1b\u9a6c\u6885\u8499\u7c73\u59c6\u5a1c\u6d85\u5b81\u8bfa\u5e15\u6cfc\u666e\u5947\u9f50\u4e54\u5207\u65e5\u8428\u8272\u5c71\u7533\u4ec0\u65af\u7d22\u5854\u5766\u7279\u6258\u5a03\u7ef4\u6587\u4e4c\u897f\u5e0c\u8c22\u4e9a\u8036\u53f6\u4f9d\u4f0a\u4ee5\u624e\u4f50\u67f4\u8fbe\u767b\u8482\u6208\u679c\u6d77\u8d6b\u534e\u970d\u5409\u5b63\u6d25\u67ef\u7406\u7433\u739b\u66fc\u7a46\u7eb3\u5c3c\u5951\u94a6\u4e18\u6851\u6c99\u820d\u6cf0\u56fe\u74e6\u4e07\u96c5\u5353\u5179"

    .line 34
    invoke-static {v3}, Lorg/nlpcn/commons/lang/util/StringUtil;->sortCharArray(Ljava/lang/String;)[C

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;-><init>([C)V

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;

    const-string v1, "-\u00b7\u2014\u4e01\u4e07\u4e18\u4e1c\u4e1d\u4e2d\u4e39\u4e3d\u4e43\u4e45\u4e49\u4e4c\u4e54\u4e70\u4e8e\u4e9a\u4ea8\u4eac\u4ec0\u4ed1\u4ed3\u4ee3\u4ee5\u4ef2\u4f0a\u4f0d\u4f0f\u4f10\u4f26\u4f2f\u4f3d\u4f46\u4f50\u4f5b\u4f69\u4f9d\u4faf\u4fc4\u4fdd\u5112\u514b\u5170\u5176\u5179\u5185\u5188\u51ef\u5207\u5217\u5229\u522b\u529b\u52a0\u52aa\u52b3\u52c3\u52d2\u5317\u534e\u5353\u5357\u535a\u535c\u5361\u5362\u536b\u5384\u5386\u53ca\u53e4\u53ef\u53f2\u53f6\u53f8\u5404\u5408\u5409\u5410\u541b\u543e\u547c\u54c8\u54e5\u54f2\u5510\u5580\u5584\u5587\u559c\u5609\u5676\u56e0\u56fe\u571f\u5723\u574e\u575a\u5766\u57c3\u57f9\u57fa\u5821\u5854\u585e\u589e\u58a8\u58eb\u590f\u591a\u5927\u592b\u5947\u5948\u594e\u5951\u5965\u59ae\u59c6\u5a01\u5a03\u5a05\u5a1c\u5b5c\u5b63\u5b81\u5b88\u5b89\u5b9c\u5bb0\u5bc6\u5bdf\u5c14\u5c15\u5c24\u5c27\u5c3c\u5c45\u5c71\u5ddd\u5dee\u5df4\u5e03\u5e0c\u5e15\u5e1d\u5e72\u5e73\u5e74\u5e93\u5e9e\u5eb7\u5ec9\u5f17\u5f3a\u5f53\u5f66\u5f6d\u5f7b\u5f7c\u5f8b\u5f97\u5fb7\u6069\u6070\u6148\u6155\u6208\u6234\u624d\u624e\u6258\u62c9\u62dc\u6377\u63d0\u6469\u654f\u6556\u6566\u6587\u6590\u65af\u65b0\u65bd\u65e5\u65e6\u65fa\u6602\u660e\u666e\u667a\u66fc\u6717\u6728\u672c\u672d\u6731\u674e\u675c\u6765\u6770\u6797\u679c\u67e5\u67ef\u67f4\u6839\u683c\u6851\u6885\u68b5\u68ee\u695e\u6b21\u6b23\u6b27\u6b47\u6b66\u6bd4\u6bd5\u6c40\u6c49\u6c57\u6c64\u6c76\u6c81\u6c83\u6c99\u6cb3\u6cbb\u6cc9\u6cca\u6cd5\u6ce2\u6cf0\u6cfc\u6cfd\u6d1b\u6d25\u6d4e\u6d66\u6d77\u6d85\u6e29\u6ed5\u6f58\u6fb3\u70c8\u70ed\u7231\u7259\u7279\u72c4\u738b\u739b\u73bb\u73c0\u73ca\u73cd\u73ed\u7406\u742a\u7433\u7434\u745e\u745f\u74dc\u74e6\u752b\u7533\u7554\u7565\u767b\u767d\u76ae\u76d6\u76df\u76f8\u77f3\u7956\u798f\u79d1\u7a46\u7acb\u7b06\u7b80\u7c73\u7d20\u7d22\u7d2f\u7ea6\u7eb3\u7ebd\u7ecd\u7ef4\u7f55\u7f57\u7fc1\u7ff0\u8003\u8036\u8042\u8089\u80af\u80e1\u80e5\u8153\u820d\u826f\u8272\u827e\u8299\u82ac\u82ad\u82cf\u82e5\u82f1\u8302\u8303\u8305\u8328\u8339\u8363\u8389\u838e\u83ab\u83b1\u83b2\u83f2\u8428\u845b\u8482\u8499\u864f\u871c\u8863\u88f4\u897f\u8a79\u8ba9\u8bd7\u8bf8\u8bfa\u8c22\u8c6a\u8d1d\u8d39\u8d3e\u8d56\u8d5b\u8d6b\u8def\u8f9b\u8fbe\u8fc8\u8fde\u8fe6\u8fea\u900a\u9053\u90a3\u90a6\u90ce\u9102\u91c7\u91cc\u91d1\u94a6\u9521\u95e8\u963f\u9640\u9676\u9686\u96c5\u96cd\u96f7\u970d\u9769\u97e6\u97f3\u989d\u9999\u9a6c\u9b4f\u9c81\u9c8d\u9ea6\u9ece\u9ed8\u9edb\u9f50"

    invoke-static {v1}, Lorg/nlpcn/commons/lang/util/StringUtil;->sortCharArray(Ljava/lang/String;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;-><init>([C)V

    sput-object v0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->INNAME:Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;

    .line 46
    sget-object v0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->ISNOTFIRST:Ljava/util/HashSet;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->ISNOTFIRST:Ljava/util/HashSet;

    const/16 v1, 0xb7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->ISNOTFIRST:Ljava/util/HashSet;

    const/16 v1, 0x2014

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->tempList:Ljava/util/List;

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->prList:Ljava/util/LinkedList;

    .line 53
    iput-object v0, p0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->terms:[Lorg/ansj/domain/Term;

    return-void
.end method

.method private reset()V
    .registers 2

    .line 112
    iget-object v0, p0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->tempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    sget-object v0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->PRLIST:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    iput-object v0, p0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->prList:Ljava/util/LinkedList;

    return-void
.end method

.method private validate(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 96
    :goto_2
    iget-object v2, p0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->prList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_24

    .line 97
    iget-object v2, p0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->prList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;

    .line 98
    invoke-virtual {v2, p1}, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition$NameChar;->contains(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    move v1, v3

    goto :goto_22

    .line 101
    :cond_1b
    iget-object v2, p0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->prList:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :goto_22
    add-int/2addr v0, v3

    goto :goto_2

    :cond_24
    return v1
.end method


# virtual methods
.method public recognition([Lorg/ansj/domain/Term;)V
    .registers 10

    .line 56
    iput-object p1, p0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->terms:[Lorg/ansj/domain/Term;

    .line 59
    invoke-direct {p0}, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->reset()V

    const/4 v0, 0x0

    move v1, v0

    .line 60
    :goto_7
    array-length v2, p1

    if-ge v1, v2, :cond_90

    .line 61
    aget-object v2, p1, v1

    if-nez v2, :cond_10

    goto/16 :goto_8c

    .line 67
    :cond_10
    iget-object v3, p0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->tempList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_49

    .line 68
    invoke-virtual {v2}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v3

    iget-object v3, v3, Lorg/ansj/domain/TermNatures;->personAttr:Lorg/ansj/domain/PersonNatureAttr;

    iget v3, v3, Lorg/ansj/domain/PersonNatureAttr;->end:I

    const/16 v5, 0xa

    if-le v3, v5, :cond_26

    goto :goto_8c

    .line 72
    :cond_26
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_49

    sget-object v3, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->ISNOTFIRST:Ljava/util/HashSet;

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    goto :goto_8c

    .line 77
    :cond_49
    invoke-virtual {v2}, Lorg/ansj/domain/Term;->getName()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v2}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v5

    sget-object v6, Lorg/ansj/domain/TermNatures;->NR:Lorg/ansj/domain/TermNatures;

    if-eq v5, v6, :cond_81

    invoke-virtual {v2}, Lorg/ansj/domain/Term;->termNatures()Lorg/ansj/domain/TermNatures;

    move-result-object v5

    sget-object v7, Lorg/ansj/domain/TermNatures;->NW:Lorg/ansj/domain/TermNatures;

    if-eq v5, v7, :cond_81

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_64

    goto :goto_81

    .line 84
    :cond_64
    iget-object v2, p0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->tempList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_70

    .line 85
    invoke-direct {p0}, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->reset()V

    goto :goto_8c

    .line 86
    :cond_70
    iget-object v2, p0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->tempList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_8c

    .line 87
    iget-object v2, p0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->tempList:Ljava/util/List;

    invoke-static {p1, v2, v6}, Lorg/ansj/util/TermUtil;->insertTerm([Lorg/ansj/domain/Term;Ljava/util/List;Lorg/ansj/domain/TermNatures;)V

    .line 88
    invoke-direct {p0}, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->reset()V

    goto :goto_8c

    .line 80
    :cond_81
    :goto_81
    invoke-direct {p0, v3}, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->validate(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 82
    iget-object v3, p0, Lorg/ansj/recognition/arrimpl/ForeignPersonRecognition;->tempList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8c
    :goto_8c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_90
    return-void
.end method

.class public Landroidx/constraintlayout/widget/ConstraintLayoutStates;
.super Ljava/lang/Object;
.source "ConstraintLayoutStates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;,
        Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;
    }
.end annotation


# instance fields
.field private final mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mConstraintSetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentConstraintNumber:I

.field mCurrentStateId:I

.field mDefaultConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field private mStateList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "layout",
            "resourceID"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    .line 43
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintSetMap:Landroid/util/SparseArray;

    .line 49
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    invoke-direct {p0, p1, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->load(Landroid/content/Context;I)V

    return-void
.end method

.method private load(Landroid/content/Context;I)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "resourceId"
        }
    .end annotation

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 286
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 292
    :try_start_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    const/4 v2, 0x1

    if-eq v0, v2, :cond_8d

    if-eqz v0, :cond_7e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_17

    goto/16 :goto_81

    .line 300
    :cond_17
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    sparse-switch v4, :sswitch_data_8e

    goto :goto_5a

    :sswitch_25
    const-string v2, "Variant"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    move v2, v6

    goto :goto_5b

    :catch_2f
    move-exception p1

    goto :goto_86

    :catch_31
    move-exception p1

    goto :goto_8a

    :sswitch_33
    const-string v2, "layoutDescription"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v2, 0x0

    goto :goto_5b

    :sswitch_3d
    const-string v4, "StateSet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_5b

    :sswitch_46
    const-string v2, "State"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    move v2, v3

    goto :goto_5b

    :sswitch_50
    const-string v2, "ConstraintSet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    move v2, v5

    goto :goto_5b

    :cond_5a
    :goto_5a
    const/4 v2, -0x1

    :goto_5b
    if-eq v2, v3, :cond_71

    if-eq v2, v6, :cond_66

    if-eq v2, v5, :cond_62

    goto :goto_81

    .line 317
    :cond_62
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_81

    .line 311
    :cond_66
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eqz v1, :cond_81

    .line 313
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->add(Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;)V

    goto :goto_81

    .line 307
    :cond_71
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    invoke-direct {v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 308
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    iget v2, v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mId:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_81

    .line 297
    :cond_7e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 294
    :cond_81
    :goto_81
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_85
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_85} :catch_31
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_85} :catch_2f

    goto :goto_d

    .line 344
    :goto_86
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8d

    .line 342
    :goto_8a
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_8d
    :goto_8d
    return-void

    :sswitch_data_8e
    .sparse-switch
        -0x50764adb -> :sswitch_50
        0x4c7d471 -> :sswitch_46
        0x526c4e31 -> :sswitch_3d
        0x62ce7272 -> :sswitch_33
        0x7155a865 -> :sswitch_25
    .end sparse-switch
.end method

.method private parseConstraintSet(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    .line 349
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 350
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_68

    .line 352
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 353
    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_65

    if-nez v4, :cond_19

    goto :goto_65

    .line 355
    :cond_19
    const-string v5, "id"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 357
    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_43

    const/16 v1, 0x2f

    .line 358
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_44

    :cond_43
    move v1, v2

    :goto_44
    if-ne v1, v2, :cond_5c

    .line 363
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_55

    .line 364
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_5c

    .line 366
    :cond_55
    const-string v2, "ConstraintLayoutStates"

    const-string v3, "error in parsing id"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_5c
    :goto_5c
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 373
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintSetMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_68

    :cond_65
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_68
    :goto_68
    return-void
.end method


# virtual methods
.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constraintsChangedListener"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public updateConstraints(IFF)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "width",
            "height"
        }
    .end annotation

    .line 73
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    const/4 v1, -0x1

    if-ne v0, p1, :cond_5c

    if-ne p1, v1, :cond_11

    .line 76
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    goto :goto_19

    .line 78
    :cond_11
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    .line 81
    :goto_19
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    if-eq v0, v1, :cond_2c

    .line 82
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->match(FF)Z

    move-result v0

    if-eqz v0, :cond_2c

    return-void

    .line 86
    :cond_2c
    invoke-virtual {p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->findMatch(FF)I

    move-result p2

    .line 87
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    if-ne p3, p2, :cond_35

    return-void

    :cond_35
    if-ne p2, v1, :cond_3a

    .line 91
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mDefaultConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    goto :goto_44

    .line 92
    :cond_3a
    iget-object p3, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    iget-object p3, p3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    :goto_44
    if-ne p2, v1, :cond_47

    goto :goto_51

    .line 94
    :cond_47
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    :goto_51
    if-nez p3, :cond_54

    return-void

    .line 98
    :cond_54
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 102
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_b6

    .line 108
    :cond_5c
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentStateId:I

    .line 109
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mStateList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;

    .line 110
    invoke-virtual {v0, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->findMatch(FF)I

    move-result v2

    if-ne v2, v1, :cond_6f

    .line 111
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    goto :goto_79

    .line 112
    :cond_6f
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    :goto_79
    if-ne v2, v1, :cond_7c

    goto :goto_86

    .line 114
    :cond_7c
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$State;->mVariants:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    :goto_86
    if-nez v3, :cond_af

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NO Constraint set found ! id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dim ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ConstraintLayoutStates"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 120
    :cond_af
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mCurrentConstraintNumber:I

    .line 124
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->mConstraintLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_b6
    return-void
.end method

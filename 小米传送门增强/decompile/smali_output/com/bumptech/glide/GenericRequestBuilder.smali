.class public Lcom/bumptech/glide/GenericRequestBuilder;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final context:Landroid/content/Context;

.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private errorId:I

.field private errorPlaceholder:Landroid/graphics/drawable/Drawable;

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackResource:I

.field protected final glide:Lcom/bumptech/glide/Glide;

.field private isCacheable:Z

.field private isModelSet:Z

.field private isThumbnailBuilt:Z

.field private isTransformationSet:Z

.field protected final lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

.field private loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/ChildLoadProvider<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field protected final modelClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TModelType;>;"
        }
    .end annotation
.end field

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderId:I

.field private priority:Lcom/bumptech/glide/Priority;

.field protected final requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

.field private signature:Lcom/bumptech/glide/load/Key;

.field private sizeMultiplier:Ljava/lang/Float;

.field private thumbSizeMultiplier:Ljava/lang/Float;

.field private thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/GenericRequestBuilder<",
            "***TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private transformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation<",
            "TResourceType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lcom/bumptech/glide/provider/LoadProvider<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/Glide;",
            "Lcom/bumptech/glide/manager/RequestTracker;",
            "Lcom/bumptech/glide/manager/Lifecycle;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/bumptech/glide/signature/EmptySignature;->obtain()Lcom/bumptech/glide/signature/EmptySignature;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->signature:Lcom/bumptech/glide/load/Key;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    .line 73
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->getFactory()Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    const/4 v1, -0x1

    .line 74
    iput v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    .line 75
    iput v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    .line 76
    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 77
    invoke-static {}, Lcom/bumptech/glide/load/resource/UnitTransformation;->get()Lcom/bumptech/glide/load/resource/UnitTransformation;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 97
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->context:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->modelClass:Ljava/lang/Class;

    .line 99
    iput-object p4, p0, Lcom/bumptech/glide/GenericRequestBuilder;->transcodeClass:Ljava/lang/Class;

    .line 100
    iput-object p5, p0, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    .line 101
    iput-object p6, p0, Lcom/bumptech/glide/GenericRequestBuilder;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    .line 102
    iput-object p7, p0, Lcom/bumptech/glide/GenericRequestBuilder;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    if-eqz p3, :cond_3f

    .line 103
    new-instance v0, Lcom/bumptech/glide/provider/ChildLoadProvider;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/provider/ChildLoadProvider;-><init>(Lcom/bumptech/glide/provider/LoadProvider;)V

    :cond_3f
    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz p1, :cond_51

    if-eqz p2, :cond_50

    if-eqz p3, :cond_48

    goto :goto_50

    .line 110
    :cond_48
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "LoadProvider must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    :goto_50
    return-void

    .line 107
    :cond_51
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/GenericRequestBuilder;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;***>;)V"
        }
    .end annotation

    .line 85
    iget-object v1, p3, Lcom/bumptech/glide/GenericRequestBuilder;->context:Landroid/content/Context;

    iget-object v2, p3, Lcom/bumptech/glide/GenericRequestBuilder;->modelClass:Ljava/lang/Class;

    iget-object v5, p3, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    iget-object v6, p3, Lcom/bumptech/glide/GenericRequestBuilder;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    iget-object v7, p3, Lcom/bumptech/glide/GenericRequestBuilder;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/GenericRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/Lifecycle;)V

    .line 87
    iget-object p1, p3, Lcom/bumptech/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    .line 88
    iget-boolean p1, p3, Lcom/bumptech/glide/GenericRequestBuilder;->isModelSet:Z

    iput-boolean p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isModelSet:Z

    .line 89
    iget-object p1, p3, Lcom/bumptech/glide/GenericRequestBuilder;->signature:Lcom/bumptech/glide/load/Key;

    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->signature:Lcom/bumptech/glide/load/Key;

    .line 90
    iget-object p1, p3, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 91
    iget-boolean p1, p3, Lcom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    iput-boolean p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    return-void
.end method

.method private buildRequest(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/Request;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    if-nez v0, :cond_8

    .line 795
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    :cond_8
    const/4 v0, 0x0

    .line 797
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object p1

    return-object p1
.end method

.method private buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lcom/bumptech/glide/request/Request;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    if-eqz v0, :cond_6e

    .line 802
    iget-boolean v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isThumbnailBuilt:Z

    if-nez v1, :cond_66

    .line 807
    iget-object v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->getFactory()Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 808
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    iput-object v1, v0, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 811
    :cond_1a
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    iget-object v1, v0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    if-nez v1, :cond_26

    .line 812
    invoke-direct {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->getThumbnailPriority()Lcom/bumptech/glide/Priority;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    .line 815
    :cond_26
    iget v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    iget v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    iget v1, v0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    iget v0, v0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    invoke-static {v1, v0}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-nez v0, :cond_45

    .line 818
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    iget v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    iget v2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/GenericRequestBuilder;->override(II)Lcom/bumptech/glide/GenericRequestBuilder;

    .line 821
    :cond_45
    new-instance v0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    .line 822
    iget-object p2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object p2

    const/4 v1, 0x1

    .line 824
    iput-boolean v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isThumbnailBuilt:Z

    .line 826
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/bumptech/glide/GenericRequestBuilder;

    invoke-direct {v1, p1, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->buildRequestRecursive(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object p1

    const/4 v1, 0x0

    .line 827
    iput-boolean v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isThumbnailBuilt:Z

    .line 828
    invoke-virtual {v0, p2, p1}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    return-object v0

    .line 803
    :cond_66
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 830
    :cond_6e
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    if-eqz v0, :cond_95

    .line 832
    new-instance v0, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/bumptech/glide/request/RequestCoordinator;)V

    .line 833
    iget-object p2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object p2

    .line 834
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->getThumbnailPriority()Lcom/bumptech/glide/Priority;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/bumptech/glide/GenericRequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object p1

    .line 835
    invoke-virtual {v0, p2, p1}, Lcom/bumptech/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/bumptech/glide/request/Request;Lcom/bumptech/glide/request/Request;)V

    return-object v0

    .line 839
    :cond_95
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/bumptech/glide/GenericRequestBuilder;->obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;

    move-result-object p1

    return-object p1
.end method

.method private getThumbnailPriority()Lcom/bumptech/glide/Priority;
    .registers 3

    .line 783
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->priority:Lcom/bumptech/glide/Priority;

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    if-ne v0, v1, :cond_9

    .line 784
    sget-object v0, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    goto :goto_12

    .line 785
    :cond_9
    sget-object v1, Lcom/bumptech/glide/Priority;->NORMAL:Lcom/bumptech/glide/Priority;

    if-ne v0, v1, :cond_10

    .line 786
    sget-object v0, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    goto :goto_12

    .line 788
    :cond_10
    sget-object v0, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    :goto_12
    return-object v0
.end method

.method private obtainRequest(Lcom/bumptech/glide/request/target/Target;FLcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/RequestCoordinator;)Lcom/bumptech/glide/request/Request;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;F",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            ")",
            "Lcom/bumptech/glide/request/Request;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v5, p3

    move-object/from16 v15, p4

    .line 845
    iget-object v1, v0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    iget-object v2, v0, Lcom/bumptech/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    iget-object v3, v0, Lcom/bumptech/glide/GenericRequestBuilder;->signature:Lcom/bumptech/glide/load/Key;

    iget-object v4, v0, Lcom/bumptech/glide/GenericRequestBuilder;->context:Landroid/content/Context;

    iget-object v8, v0, Lcom/bumptech/glide/GenericRequestBuilder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Lcom/bumptech/glide/GenericRequestBuilder;->placeholderId:I

    iget-object v10, v0, Lcom/bumptech/glide/GenericRequestBuilder;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iget v11, v0, Lcom/bumptech/glide/GenericRequestBuilder;->errorId:I

    iget-object v12, v0, Lcom/bumptech/glide/GenericRequestBuilder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget v13, v0, Lcom/bumptech/glide/GenericRequestBuilder;->fallbackResource:I

    iget-object v14, v0, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v14}, Lcom/bumptech/glide/Glide;->getEngine()Lcom/bumptech/glide/load/engine/Engine;

    move-result-object v16

    iget-object v14, v0, Lcom/bumptech/glide/GenericRequestBuilder;->transformation:Lcom/bumptech/glide/load/Transformation;

    move-object/from16 v17, v14

    iget-object v14, v0, Lcom/bumptech/glide/GenericRequestBuilder;->transcodeClass:Ljava/lang/Class;

    move-object/from16 v18, v14

    iget-boolean v14, v0, Lcom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    move/from16 v19, v14

    iget-object v14, v0, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    move-object/from16 v20, v14

    iget v14, v0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    move/from16 v21, v14

    iget v14, v0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    move/from16 v22, v14

    iget-object v14, v0, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move-object/from16 v23, v14

    const/4 v14, 0x0

    invoke-static/range {v1 .. v23}, Lcom/bumptech/glide/request/GenericRequest;->obtain(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/GenericRequest;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public animate(Lcom/bumptech/glide/request/animation/GlideAnimationFactory;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 427
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    return-object p0

    .line 425
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Animation factory must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clone()Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 631
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GenericRequestBuilder;

    .line 633
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/bumptech/glide/provider/ChildLoadProvider;->clone()Lcom/bumptech/glide/provider/ChildLoadProvider;

    move-result-object v1

    goto :goto_12

    :catch_f
    move-exception v0

    goto :goto_15

    :cond_11
    const/4 v1, 0x0

    :goto_12
    iput-object v1, v0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;
    :try_end_14
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_14} :catch_f

    return-object v0

    .line 636
    :goto_15
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/bumptech/glide/GenericRequestBuilder;->clone()Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public decoder(Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "TDataType;TResourceType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v0, :cond_7

    .line 208
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/provider/ChildLoadProvider;->setSourceDecoder(Lcom/bumptech/glide/load/ResourceDecoder;)V

    :cond_7
    return-object p0
.end method

.method public diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    return-object p0
.end method

.method public into(II)Lcom/bumptech/glide/request/FutureTarget;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/request/FutureTarget<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 721
    new-instance v0, Lcom/bumptech/glide/request/RequestFutureTarget;

    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {v1}, Lcom/bumptech/glide/Glide;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/bumptech/glide/request/RequestFutureTarget;-><init>(Landroid/os/Handler;II)V

    .line 725
    iget-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->glide:Lcom/bumptech/glide/Glide;

    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/bumptech/glide/GenericRequestBuilder$1;

    invoke-direct {p2, p0, v0}, Lcom/bumptech/glide/GenericRequestBuilder$1;-><init>(Lcom/bumptech/glide/GenericRequestBuilder;Lcom/bumptech/glide/request/RequestFutureTarget;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/bumptech/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .line 649
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    if-eqz p1, :cond_34

    .line 653
    iget-boolean v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isModelSet:Z

    if-eqz v0, :cond_2c

    .line 657
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 660
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->clear()V

    .line 661
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/manager/RequestTracker;->removeRequest(Lcom/bumptech/glide/request/Request;)V

    .line 662
    invoke-interface {v0}, Lcom/bumptech/glide/request/Request;->recycle()V

    .line 665
    :cond_1a
    invoke-direct {p0, p1}, Lcom/bumptech/glide/GenericRequestBuilder;->buildRequest(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/Request;

    move-result-object v0

    .line 666
    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/Request;)V

    .line 667
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->lifecycle:Lcom/bumptech/glide/manager/Lifecycle;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 668
    iget-object v1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->requestTracker:Lcom/bumptech/glide/manager/RequestTracker;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/manager/RequestTracker;->runRequest(Lcom/bumptech/glide/request/Request;)V

    return-object p1

    .line 654
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must first set a model (try #load())"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 651
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must pass in a non null Target"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public load(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 613
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 614
    iput-boolean p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isModelSet:Z

    return-object p0
.end method

.method public override(II)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 570
    invoke-static {p1, p2}, Lcom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 573
    iput p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideWidth:I

    .line 574
    iput p2, p0, Lcom/bumptech/glide/GenericRequestBuilder;->overrideHeight:I

    return-object p0

    .line 571
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and height must be Target#SIZE_ORIGINAL or > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 597
    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->signature:Lcom/bumptech/glide/load/Key;

    return-object p0

    .line 595
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Signature must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skipMemoryCache(Z)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    .line 555
    iput-boolean p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isCacheable:Z

    return-object p0
.end method

.method public sourceEncoder(Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Encoder<",
            "TDataType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->loadProvider:Lcom/bumptech/glide/provider/ChildLoadProvider;

    if-eqz v0, :cond_7

    .line 247
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/provider/ChildLoadProvider;->setSourceEncoder(Lcom/bumptech/glide/load/Encoder;)V

    :cond_7
    return-object p0
.end method

.method public varargs transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/Transformation<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->isTransformationSet:Z

    .line 323
    array-length v1, p1

    if-ne v1, v0, :cond_c

    const/4 v0, 0x0

    .line 324
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/bumptech/glide/GenericRequestBuilder;->transformation:Lcom/bumptech/glide/load/Transformation;

    goto :goto_13

    .line 326
    :cond_c
    new-instance v0, Lcom/bumptech/glide/load/MultiTransformation;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/MultiTransformation;-><init>([Lcom/bumptech/glide/load/Transformation;)V

    iput-object v0, p0, Lcom/bumptech/glide/GenericRequestBuilder;->transformation:Lcom/bumptech/glide/load/Transformation;

    :goto_13
    return-object p0
.end method

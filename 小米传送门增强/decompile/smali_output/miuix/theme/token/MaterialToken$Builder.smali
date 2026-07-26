.class public Lmiuix/theme/token/MaterialToken$Builder;
.super Ljava/lang/Object;
.source "MaterialToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/theme/token/MaterialToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mToken:Lmiuix/theme/token/MaterialToken;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Lmiuix/theme/token/MaterialToken;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiuix/theme/token/MaterialToken;-><init>(ILmiuix/theme/token/MaterialToken$1;)V

    iput-object v0, p0, Lmiuix/theme/token/MaterialToken$Builder;->mToken:Lmiuix/theme/token/MaterialToken;

    .line 309
    invoke-virtual {p0, p2, p3}, Lmiuix/theme/token/MaterialToken$Builder;->setTokenInfo(Ljava/lang/String;Ljava/lang/String;)Lmiuix/theme/token/MaterialToken$Builder;

    return-void
.end method


# virtual methods
.method public build()Lmiuix/theme/token/MaterialToken;
    .registers 2

    .line 575
    iget-object v0, p0, Lmiuix/theme/token/MaterialToken$Builder;->mToken:Lmiuix/theme/token/MaterialToken;

    return-object v0
.end method

.method public setBlur(IIII)Lmiuix/theme/token/MaterialToken$Builder;
    .registers 7

    .line 486
    iget-object v0, p0, Lmiuix/theme/token/MaterialToken$Builder;->mToken:Lmiuix/theme/token/MaterialToken;

    const/4 v1, 0x1

    iput v1, v0, Lmiuix/theme/token/MaterialToken;->enableBlur:I

    .line 487
    iput p1, v0, Lmiuix/theme/token/MaterialToken;->blurContainerMode:I

    .line 488
    iput p2, v0, Lmiuix/theme/token/MaterialToken;->blurElementMode:I

    .line 489
    iput p3, v0, Lmiuix/theme/token/MaterialToken;->blurType:I

    .line 490
    iput p4, v0, Lmiuix/theme/token/MaterialToken;->blurRadius:I

    return-object p0
.end method

.method public setColorBlend(Lmiuix/theme/token/ColorBlendToken;)Lmiuix/theme/token/MaterialToken$Builder;
    .registers 5

    if-nez p1, :cond_3

    return-object p0

    .line 433
    :cond_3
    iget-object v0, p0, Lmiuix/theme/token/MaterialToken$Builder;->mToken:Lmiuix/theme/token/MaterialToken;

    const/4 v1, 0x1

    iput v1, v0, Lmiuix/theme/token/MaterialToken;->enableColorBlend:I

    .line 434
    iget-object v2, p1, Lmiuix/theme/token/ColorBlendToken;->colors:[I

    iput-object v2, v0, Lmiuix/theme/token/MaterialToken;->blendColors:[I

    .line 435
    iget-object v2, p1, Lmiuix/theme/token/ColorBlendToken;->blendModes:[I

    iput-object v2, v0, Lmiuix/theme/token/MaterialToken;->blendModes:[I

    .line 436
    iget-object v2, p1, Lmiuix/theme/token/ColorBlendToken;->extraBlendParams:[F

    iput-object v2, v0, Lmiuix/theme/token/MaterialToken;->blendExtraParams:[F

    .line 437
    iget-object v2, p1, Lmiuix/theme/token/ColorBlendToken;->fallbackColors:[I

    if-eqz v2, :cond_25

    .line 438
    iput v1, v0, Lmiuix/theme/token/MaterialToken;->hasFallbackColorBlend:I

    .line 439
    iput-object v2, v0, Lmiuix/theme/token/MaterialToken;->fallbackBlendColors:[I

    .line 440
    iget-object v1, p1, Lmiuix/theme/token/ColorBlendToken;->fallbackBlendModes:[I

    iput-object v1, v0, Lmiuix/theme/token/MaterialToken;->fallbackBlendModes:[I

    .line 441
    iget-object p1, p1, Lmiuix/theme/token/ColorBlendToken;->fallbackExtraBlendParams:[F

    iput-object p1, v0, Lmiuix/theme/token/MaterialToken;->fallbackBlendExtraParams:[F

    goto :goto_28

    :cond_25
    const/4 p1, 0x0

    .line 443
    iput p1, v0, Lmiuix/theme/token/MaterialToken;->hasFallbackColorBlend:I

    :goto_28
    return-object p0
.end method

.method public setMaskBlur(I)Lmiuix/theme/token/MaterialToken$Builder;
    .registers 4

    .line 476
    iget-object v0, p0, Lmiuix/theme/token/MaterialToken$Builder;->mToken:Lmiuix/theme/token/MaterialToken;

    const/4 v1, 0x1

    iput v1, v0, Lmiuix/theme/token/MaterialToken;->enableBlur:I

    .line 477
    iput v1, v0, Lmiuix/theme/token/MaterialToken;->blurContainerMode:I

    .line 478
    iput v1, v0, Lmiuix/theme/token/MaterialToken;->blurElementMode:I

    const/4 v1, 0x0

    .line 479
    iput v1, v0, Lmiuix/theme/token/MaterialToken;->blurType:I

    .line 480
    iput p1, v0, Lmiuix/theme/token/MaterialToken;->blurRadius:I

    return-object p0
.end method

.method public setTokenInfo(Ljava/lang/String;Ljava/lang/String;)Lmiuix/theme/token/MaterialToken$Builder;
    .registers 5

    .line 313
    iget-object v0, p0, Lmiuix/theme/token/MaterialToken$Builder;->mToken:Lmiuix/theme/token/MaterialToken;

    const-string v1, ""

    if-eqz p1, :cond_7

    goto :goto_8

    :cond_7
    move-object p1, v1

    :goto_8
    iput-object p1, v0, Lmiuix/theme/token/MaterialToken;->token:Ljava/lang/String;

    if-eqz p2, :cond_d

    goto :goto_e

    :cond_d
    move-object p2, v1

    .line 314
    :goto_e
    iput-object p2, v0, Lmiuix/theme/token/MaterialToken;->tokenVariant:Ljava/lang/String;

    return-object p0
.end method

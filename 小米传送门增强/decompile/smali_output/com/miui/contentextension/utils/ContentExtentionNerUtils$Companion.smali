.class public final Lcom/miui/contentextension/utils/ContentExtentionNerUtils$Companion;
.super Ljava/lang/Object;
.source "ContentExtentionNerUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/utils/ContentExtentionNerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/miui/contentextension/utils/ContentExtentionNerUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINSTANCE()Lcom/miui/contentextension/utils/ContentExtentionNerUtils;
    .registers 2

    .line 23
    # getter for: Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->INSTANCE$delegate:Lkotlin/Lazy;
    invoke-static {}, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->access$getINSTANCE$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;

    return-object v0
.end method

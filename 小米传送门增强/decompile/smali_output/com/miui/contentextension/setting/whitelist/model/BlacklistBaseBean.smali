.class public abstract Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean;
.super Ljava/lang/Object;
.source "BlacklistBaseBean.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean$Companion;

.field public static final TYPE_DATA:I = 0xb

.field public static final TYPE_HEADER:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean;->Companion:Lcom/miui/contentextension/setting/whitelist/model/BlacklistBaseBean$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getViewType()I
.end method

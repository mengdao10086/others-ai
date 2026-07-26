.class Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;
.super Ljava/lang/Object;
.source "BlacklistUtils.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValuePair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetname(Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;->name:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvalue(Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;->value:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;->name:Ljava/lang/String;

    .line 286
    iput-object p2, p0, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;)I
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 278
    check-cast p1, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;

    invoke-virtual {p0, p1}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;->compareTo(Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$NameValuePair;)I

    move-result p1

    return p1
.end method

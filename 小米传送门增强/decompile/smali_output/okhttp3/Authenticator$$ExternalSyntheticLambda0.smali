.class public final synthetic Lokhttp3/Authenticator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lokhttp3/Authenticator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .registers 3

    .line 0
    invoke-static {p1, p2}, Lokhttp3/Authenticator;->$r8$lambda$6_cV11IPkCIICT_9hgSn29yVQTs(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

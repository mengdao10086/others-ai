.class public final synthetic Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;

    invoke-static {p1}, Lcom/miui/contentextension/setting/whitelist/utils/BlacklistUtils;->$r8$lambda$finzJPEkmXc5hSBJSzEsYNmAOtw(Lcom/miui/contentextension/setting/whitelist/model/BlacklistModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

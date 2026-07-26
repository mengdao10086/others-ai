.class public final synthetic Lcom/miui/contentextension/setting/cta/PrivacyUpdateActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/miui/contentextension/utils/Utils$Listener;


# instance fields
.field public final synthetic f$0:Lcom/miui/contentextension/setting/cta/PrivacyUpdateActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/contentextension/setting/cta/PrivacyUpdateActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/contentextension/setting/cta/PrivacyUpdateActivity$$ExternalSyntheticLambda0;->f$0:Lcom/miui/contentextension/setting/cta/PrivacyUpdateActivity;

    return-void
.end method


# virtual methods
.method public final onRefusePrivacyChange()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/miui/contentextension/setting/cta/PrivacyUpdateActivity$$ExternalSyntheticLambda0;->f$0:Lcom/miui/contentextension/setting/cta/PrivacyUpdateActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

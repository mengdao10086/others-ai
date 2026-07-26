.class Lcom/miui/contentextension/clipboard/MiContinuityService$1;
.super Ljava/lang/Object;
.source "MiContinuityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/contentextension/clipboard/MiContinuityService;->onChannelCreateSuccess(Lcom/xiaomi/continuity/channel/Channel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/contentextension/clipboard/MiContinuityService;

.field final synthetic val$channel:Lcom/xiaomi/continuity/channel/Channel;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/contentextension/clipboard/MiContinuityService;Ljava/lang/String;Lcom/xiaomi/continuity/channel/Channel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/miui/contentextension/clipboard/MiContinuityService$1;->this$0:Lcom/miui/contentextension/clipboard/MiContinuityService;

    iput-object p2, p0, Lcom/miui/contentextension/clipboard/MiContinuityService$1;->val$content:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/contentextension/clipboard/MiContinuityService$1;->val$channel:Lcom/xiaomi/continuity/channel/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 119
    sget-object v0, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->Companion:Lcom/miui/contentextension/utils/ContentExtentionNerUtils$Companion;

    invoke-virtual {v0}, Lcom/miui/contentextension/utils/ContentExtentionNerUtils$Companion;->getINSTANCE()Lcom/miui/contentextension/utils/ContentExtentionNerUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/contentextension/clipboard/MiContinuityService$1;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/contentextension/utils/ContentExtentionNerUtils;->getNerType(Ljava/lang/String;)I

    move-result v0

    .line 120
    new-instance v1, Lcom/miui/contentextension/clipboard/model/ContinuityChannelMessageBean;

    invoke-direct {v1}, Lcom/miui/contentextension/clipboard/model/ContinuityChannelMessageBean;-><init>()V

    .line 121
    invoke-virtual {v1, v0}, Lcom/miui/contentextension/clipboard/model/ContinuityChannelMessageBean;->setNerType(I)V

    .line 122
    iget-object v0, p0, Lcom/miui/contentextension/clipboard/MiContinuityService$1;->val$content:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/miui/contentextension/clipboard/model/ContinuityChannelMessageBean;->setClipboardData(Ljava/lang/String;)V

    .line 123
    invoke-static {v1}, Lcom/miui/contentextension/clipboard/utils/GsonUtils;->gsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 125
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/continuity/channel/Packet;->fromBytes([B)Lcom/xiaomi/continuity/channel/Packet;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/miui/contentextension/clipboard/MiContinuityService$1;->val$channel:Lcom/xiaomi/continuity/channel/Channel;

    invoke-interface {v1, v0}, Lcom/xiaomi/continuity/channel/Channel;->send(Lcom/xiaomi/continuity/channel/Packet;)V

    return-void
.end method

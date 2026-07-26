.class public Lcom/miui/contentextension/analy/ClipboardAnaly;
.super Ljava/lang/Object;
.source "ClipboardAnaly.java"


# direct methods
.method public static trackDeviceCardClick(Lcom/miui/contentextension/clipboard/model/DeviceInfo;Ljava/lang/String;)V
    .registers 3

    .line 60
    invoke-static {p0, p1}, Lcom/miui/contentextension/analy/RecommendAnaly;->getParams(Lcom/miui/contentextension/clipboard/model/DeviceInfo;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 61
    const-string p1, "module_type"

    const-string v0, "recommend"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string p1, "page_type"

    const-string v0, "start_floating"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "removesend"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string p1, "tip"

    const-string v0, "66.2.1.1.1051"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string p1, "G_CLICK"

    invoke-static {p1, p0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackDeviceCardExpose(Lcom/miui/contentextension/clipboard/model/DeviceInfo;Ljava/lang/String;)V
    .registers 3

    .line 70
    invoke-static {p0, p1}, Lcom/miui/contentextension/analy/RecommendAnaly;->getParams(Lcom/miui/contentextension/clipboard/model/DeviceInfo;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 71
    const-string p1, "module_type"

    const-string v0, "clipboard_device"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string p1, "page_type"

    const-string v0, "start_floating"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string p1, "tip"

    const-string v0, "66.2.1.1.1044"

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string p1, "G_EXPOSE"

    invoke-static {p1, p0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEditorCardClick(Z)V
    .registers 3

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "has_recommend"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string p0, "module_type"

    const-string v1, "clipboard_editor"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string p0, "page_type"

    const-string v1, "start_floating"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "removesend"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string p0, "tip"

    const-string v1, "66.2.2.1.1052"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string p0, "G_CLICK"

    invoke-static {p0, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEditorCardExpose(Z)V
    .registers 3

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "has_recommend"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string p0, "module_type"

    const-string v1, "clipboard_editor"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string p0, "page_type"

    const-string v1, "start_floating"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string p0, "tip"

    const-string v1, "66.2.2.1.1052"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string p0, "G_EXPOSE"

    invoke-static {p0, v0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackNerCardClick(Lcom/miui/contentextension/data/recognition/Entity;)V
    .registers 3

    .line 40
    invoke-static {p0}, Lcom/miui/contentextension/analy/RecommendAnaly;->getParams(Lcom/miui/contentextension/data/recognition/Entity;)Ljava/util/Map;

    move-result-object p0

    .line 41
    const-string v0, "module_type"

    const-string v1, "recommend"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v0, "page_type"

    const-string v1, "start_floating"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "tip"

    const-string v1, "66.2.1.1.1051"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "G_CLICK"

    invoke-static {v0, p0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackNerCardExpose(Lcom/miui/contentextension/data/recognition/Entity;)V
    .registers 3

    .line 48
    invoke-static {p0}, Lcom/miui/contentextension/analy/RecommendAnaly;->getParams(Lcom/miui/contentextension/data/recognition/Entity;)Ljava/util/Map;

    move-result-object p0

    .line 49
    const-string v0, "module_type"

    const-string v1, "clipboard_ner"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "page_type"

    const-string v1, "start_floating"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "tip"

    const-string v1, "66.2.1.1.1044"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "G_EXPOSE"

    invoke-static {v0, p0}, Lcom/miui/contentextension/analy/Analy;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
